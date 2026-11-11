# Plays the REAL story through StoryManager along every route, the way a player
# would: click through dialogue, pick an option at each choice (R1, R8).
# end_game() is stubbed so the GUT runner's scene isn't replaced.
extends GutTest

const H = preload("res://test/story_helpers.gd")
const StoryManagerScript = preload("res://Scripts/storyManager.gd")

# More steps than this on one route means the story is stuck in a loop.
const MAX_STEPS := 1000

var nodes: Dictionary


func before_each():
	nodes = H.all_nodes()
	InputManager.input_blocked = false


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


func test_every_option_leads_on_to_another_choice_or_an_ending():
	# Covers options that loop back (e.g. the prophecy questions): after picking
	# one, clicking must bring the player to a choice or an ending.
	var problems := []
	for id in nodes:
		var node: Dictionary = nodes[id]
		if node.get("type") != "choice":
			continue
		for option in node.get("choices", []):
			var sm = _new_manager()
			sm.choice_selected(option.next)
			var ok := false
			for step in MAX_STEPS:
				var cur: String = sm.current_node_id
				if not nodes.has(cur):
					break
				if nodes[cur].type == "choice" or H.is_ending(nodes[cur]):
					ok = true
					break
				sm.play_next_node()
				if sm.current_node_id == cur:
					break
			if not ok:
				problems.append("%s > \"%s\" gets stuck at %s" % [id, option.text, sm.current_node_id])
	assert_true(problems.is_empty(), H.report(problems))
