# Story data validation (Test Plan 4.1). Run before every merge that touches
# Scripts/scene*.gd. These checks read the story dictionaries directly; they
# don't run the game.
extends GutTest

const H = preload("res://test/story_helpers.gd")

# How many endings the storyboard has. Max: set this once each ending has its
# own node (right now every ending shares "end_game"). Leave at -1 to skip.
const EXPECTED_ENDING_COUNT := -1

var nodes: Dictionary


func before_each():
	nodes = H.all_nodes()


func test_story_has_nodes():
	assert_gt(nodes.size(), 0, "No story nodes were loaded")


func test_start_node_exists():
	assert_true(nodes.has(H.START_ID), "Start node '%s' (used in main.gd) is missing" % H.START_ID)


func test_node_ids_are_unique_across_scene_files():
	# StoryData uses Dictionary.merge(), which silently drops a node whose ID
	# already exists in an earlier scene file.
	var first_seen := {}
	var problems := []
	var sources := H.scene_sources()
	for file in sources:
		for id in sources[file]:
			if first_seen.has(id):
				problems.append("'%s' is in both %s and %s" % [id, first_seen[id], file])
			else:
				first_seen[id] = file
	assert_true(problems.is_empty(), H.report(problems))


func test_story_data_autoload_has_every_node():
	# Guards against a scene file being left out of Scripts/storyData.gd.
	var expected := 0
	for file_nodes in H.scene_sources().values():
		expected += file_nodes.size()
	assert_eq(StoryData.story_data.size(), expected,
		"StoryData has a different node count than the scene files combined")


func test_every_node_has_a_known_type():
	var problems := []
	for id in nodes:
		var type = nodes[id].get("type")
		if not H.REQUIRED_FIELDS.has(type):
			problems.append("%s: unknown type '%s'" % [id, type])
	assert_true(problems.is_empty(), H.report(problems))


func test_every_node_has_the_fields_its_type_needs():
	var problems := []
	for id in nodes:
		var node: Dictionary = nodes[id]
		var fields: Dictionary = H.REQUIRED_FIELDS.get(node.get("type"), {})
		for field in fields:
			if not node.has(field):
				problems.append("%s: missing '%s'" % [id, field])
			elif typeof(node[field]) != fields[field]:
				problems.append("%s: '%s' has the wrong type" % [id, field])
		if node.get("type") == "character" and node.get("position") is Dictionary:
			var pos: Dictionary = node["position"]
			if not (pos.has("x") and pos.has("y")):
				problems.append("%s: position needs both x and y" % id)
		if node.get("type") == "choice" and node.get("choices") is Array:
			for i in node["choices"].size():
				var option = node["choices"][i]
				if not (option is Dictionary and option.get("text") is String and option.get("next") is String):
					problems.append("%s: option %d needs 'text' and 'next'" % [id, i + 1])
				elif option["text"].strip_edges() == "":
					problems.append("%s: option %d has no button text" % [id, i + 1])
	assert_true(problems.is_empty(), H.report(problems))


func test_dialogue_text_is_not_empty():
	var problems := []
	for id in nodes:
		var node: Dictionary = nodes[id]
		if node.get("type") == "dialogue" and str(node.get("text", "")).strip_edges() == "":
			problems.append("%s: empty dialogue text" % id)
	assert_true(problems.is_empty(), H.report(problems))


func test_every_next_points_to_an_existing_node():
	var problems := []
	for id in nodes:
		for n in H.next_ids(nodes[id]):
			if not nodes.has(n):
				problems.append("%s -> '%s' (no such node)" % [id, n])
	assert_true(problems.is_empty(), H.report(problems))


func test_every_choice_has_at_least_two_options():
	var problems := []
	for id in nodes:
		var node: Dictionary = nodes[id]
		if node.get("type") == "choice" and node.get("choices", []).size() < 2:
			problems.append("%s: only %d option(s)" % [id, node.get("choices", []).size()])
	assert_true(problems.is_empty(), H.report(problems))


func test_choice_options_lead_to_different_nodes():
	var problems := []
	for id in nodes:
		var node: Dictionary = nodes[id]
		if node.get("type") != "choice":
			continue
		var targets := H.next_ids(node)
		var unique := {}
		for t in targets:
			unique[t] = true
		if unique.size() != targets.size():
			problems.append("%s: two options go to the same node" % id)
	assert_true(problems.is_empty(), H.report(problems))


func test_every_node_is_reachable_from_start():
	var reachable := H.reachable_from(H.START_ID, nodes)
	var problems := []
	for id in nodes:
		if not reachable.has(id):
			problems.append("%s can never be reached" % id)
	assert_true(problems.is_empty(), H.report(problems))


func test_every_node_can_reach_an_ending():
	# Catches dead ends and loops with no way out. Loops that DO have an exit
	# (like a question hub) are fine.
	var good := H.can_reach_ending(nodes)
	var problems := []
	for id in nodes:
		if not good.has(id):
			problems.append("%s has no path to an ending (dead end or endless loop)" % id)
	assert_true(problems.is_empty(), H.report(problems))


func test_story_has_at_least_one_ending():
	var endings := nodes.keys().filter(func(id): return H.is_ending(nodes[id]))
	assert_gt(endings.size(), 0, "No ending nodes found")


func test_ending_count_matches_storyboard():
	if EXPECTED_ENDING_COUNT < 0:
		pending("Set EXPECTED_ENDING_COUNT once each ending has its own node")
		return
	var endings := nodes.keys().filter(func(id): return H.is_ending(nodes[id]))
	assert_eq(endings.size(), EXPECTED_ENDING_COUNT, "Ending count does not match the storyboard")
