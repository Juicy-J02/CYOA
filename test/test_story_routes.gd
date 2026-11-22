# Plays the REAL story through StoryManager along every route, the way a player
# would: click through dialogue, pick an option at each choice (R1, R8).
# end_game() is stubbed so the GUT runner's scene isn't replaced, and saving is
# sandboxed so your own save isn't overwritten.
extends GutTest

const H = preload("res://test/story_helpers.gd")
const SaveSandbox = preload("res://test/save_sandbox.gd")
const StoryManagerScript = preload("res://Scripts/storyManager.gd")

# More steps than this on one route means the story is stuck in a loop.
const MAX_STEPS := 1000

var nodes: Dictionary


func before_all():
	SaveSandbox.protect()


func after_all():
	SaveSandbox.restore()


func before_each():
	SaveSandbox.clear()
	nodes = H.all_nodes()


func after_each():
	InputManager.input_blocked = false


func _new_manager():
	var sm = partial_double(StoryManagerScript).new()
	stub(sm, "end_game").to_do_nothing()
	sm.story_data = nodes
	autofree(sm)
	return sm


# Plays from the start using the given choice indexes. Returns "" on success,
# or a description of what went wrong.
func _play_route(picks: Array) -> String:
	var sm = _new_manager()
	sm.start_story(H.START_ID)
	var pick := 0
	for step in MAX_STEPS:
		var id: String = sm.current_node_id
		if not nodes.has(id):
			return "hit missing node '%s'" % id
		var node: Dictionary = nodes[id]
		if H.is_ending(node):
			return "" if get_call_count(sm, "end_game") > 0 else "reached %s but end_game was never called" % id
		if node.type == "choice":
			if pick >= picks.size():
				return "ran out of picks at choice %s" % id
			sm.choice_selected(node.choices[picks[pick]].next)
			pick += 1
		elif node.type == "qte":
			if pick >= picks.size():
				return "ran out of picks at QTE %s" % id
			if not sm.is_qte_active():
				return "QTE %s never started its timer" % id
			sm.play_next_node()  # a stray click on the story must not skip the QTE
			if sm.current_node_id != id:
				return "a click skipped QTE %s" % id
			if picks[pick] == 0:
				sm.tick_qte(sm.qte_seconds / 2.0)  # hit it partway through
				sm.qte_hit()
			else:
				sm.tick_qte(sm.qte_seconds + 0.1)  # let the time run out
			pick += 1
		else:
			sm.play_next_node()
			if sm.current_node_id == id:
				return "stuck on %s (click did nothing)" % id
	return "no ending after %d steps (endless loop?)" % MAX_STEPS


func _describe(picks: Array) -> String:
	# Turns [1, 3, 0] into readable button text for the failure message.
	var sm_nodes := nodes
	var labels := []
	var id := H.START_ID
	var pick := 0
	var guard := 0
	while sm_nodes.has(id) and not H.is_ending(sm_nodes[id]) and guard < MAX_STEPS:
		guard += 1
		var node: Dictionary = sm_nodes[id]
		if node.type == "choice":
			if pick >= picks.size():
				break
			var option: Dictionary = node.choices[picks[pick]]
			labels.append("\"%s\"" % option.text)
			id = option.next
			pick += 1
		elif node.type == "qte":
			if pick >= picks.size():
				break
			labels.append(node.prompt if picks[pick] == 0 else "(missed %s)" % node.prompt)
			id = node.next if picks[pick] == 0 else node.fail
			pick += 1
		else:
			id = node.get("next", "")
	return " > ".join(labels) if not labels.is_empty() else "(no choices)"


func test_there_is_at_least_one_route_to_an_ending():
	var routes := H.all_routes(H.START_ID, nodes)
	gut.p("Found %d route(s) from start to an ending" % routes.size())
	assert_gt(routes.size(), 0)


func test_every_route_plays_through_to_an_ending():
	var problems := []
	for picks in H.all_routes(H.START_ID, nodes):
		var result := _play_route(picks)
		if result != "":
			problems.append("%s: %s" % [_describe(picks), result])
	assert_true(problems.is_empty(), H.report(problems))


func test_every_option_leads_on_to_another_decision_or_an_ending():
	# Covers options that loop back (e.g. a question menu) and both sides of every
	# QTE: after picking one, clicking must bring the player to another choice, a
	# QTE, or an ending.
	var problems := []
	for id in nodes:
		var node: Dictionary = nodes[id]
		if not H.is_decision(node):
			continue
		var targets := H.next_ids(node)
		for i in targets.size():
			var label: String = node.choices[i].text if node.type == "choice" else (node.prompt if i == 0 else "Miss")
			var sm = _new_manager()
			sm.play_node(targets[i])
			var ok := false
			for step in MAX_STEPS:
				var cur: String = sm.current_node_id
				if not nodes.has(cur):
					break
				if H.is_decision(nodes[cur]) or H.is_ending(nodes[cur]):
					ok = true
					break
				sm.play_next_node()
				if sm.current_node_id == cur:
					break
			if not ok:
				problems.append("%s > \"%s\" gets stuck at %s" % [id, label, sm.current_node_id])
	assert_true(problems.is_empty(), H.report(problems))
