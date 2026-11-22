# Shared helpers for the story tests. Not a test file itself (no "test_" prefix),
# so GUT will not try to run it. Load it with:
#   const H = preload("res://test/story_helpers.gd")
extends RefCounted

# The node main.gd starts the story on. Keep in sync with Scripts/main.gd.
const START_ID := "act1_scene1_background"

# Node types that finish a playthrough.
const ENDING_TYPES := ["end_game"]

# Fields every node type needs, and the type each field must be.
# If you add a new node type to StoryManager, add it here too.
const REQUIRED_FIELDS := {
	"background": {"background": TYPE_STRING, "next": TYPE_STRING},
	"character": {"character": TYPE_STRING, "position": TYPE_DICTIONARY, "next": TYPE_STRING},
	"dialogue": {"speaker": TYPE_STRING, "text": TYPE_STRING, "next": TYPE_STRING},
	"choice": {"choices": TYPE_ARRAY},
	"pause": {"next": TYPE_STRING},
	"qte": {"prompt": TYPE_STRING, "next": TYPE_STRING, "fail": TYPE_STRING},
	"end_game": {},
}


# Each scene file's nodes, kept separate so duplicate IDs across files can be seen.
# Finds every "class_name SceneN" script on its own, so a new scene9.gd is checked
# automatically. (It still has to be added to Scripts/storyData.gd to be in the game;
# test_story_data_autoload_has_every_node catches it if it isn't.)
static func scene_sources() -> Dictionary:
	var found := []
	for info in ProjectSettings.get_global_class_list():
		var name: String = info["class"]
		if name.begins_with("Scene") and name.trim_prefix("Scene").is_valid_int():
			found.append(info)
	found.sort_custom(func(a, b): return int(a["class"].trim_prefix("Scene")) < int(b["class"].trim_prefix("Scene")))
	var sources := {}
	for info in found:
		sources[info["path"].get_file()] = load(info["path"]).get_nodes()
	return sources


# All nodes merged the same way StoryData does it.
static func all_nodes() -> Dictionary:
	var merged := {}
	for nodes in scene_sources().values():
		merged.merge(nodes)
	return merged


# Choices and QTEs: the nodes where the player decides where the story goes.
static func is_decision(node: Dictionary) -> bool:
	return node.get("type") in ["choice", "qte"]


static func is_ending(node: Dictionary) -> bool:
	return node.get("type") in ENDING_TYPES


# The lines that lead straight into end_game. The Story Map uses these to tell endings
# apart (see docs/save-system-decisions.md), and their "ending" field is the title.
static func ending_lines(nodes: Dictionary) -> Array:
	var out := []
	for id in nodes:
		var node: Dictionary = nodes[id]
		if is_ending(node):
			continue
		for n in next_ids(node):
			if nodes.has(n) and is_ending(nodes[n]) and not id in out:
				out.append(id)
	return out


# The node IDs a node can lead to (one for most nodes, one per option for choices).
static func next_ids(node: Dictionary) -> Array:
	var out := []
	if node.get("type") == "choice":
		for option in node.get("choices", []):
			if option is Dictionary and option.has("next"):
				out.append(option["next"])
	elif node.get("type") == "qte":
		# Option 0 = hit it in time, option 1 = run out of time.
		for key in ["next", "fail"]:
			if node.has(key):
				out.append(node[key])
	elif node.has("next"):
		out.append(node["next"])
	return out


# Every node ID reachable from start_id by following next links.
static func reachable_from(start_id: String, nodes: Dictionary) -> Dictionary:
	var seen := {}
	var stack := [start_id]
	while not stack.is_empty():
		var id = stack.pop_back()
		if seen.has(id) or not nodes.has(id):
			continue
		seen[id] = true
		for n in next_ids(nodes[id]):
			stack.append(n)
	return seen


# Every node ID that has at least one path to an ending.
static func can_reach_ending(nodes: Dictionary) -> Dictionary:
	var incoming := {}
	for id in nodes:
		for n in next_ids(nodes[id]):
			if not incoming.has(n):
				incoming[n] = []
			incoming[n].append(id)
	var good := {}
	var stack := []
	for id in nodes:
		if is_ending(nodes[id]):
			stack.append(id)
	while not stack.is_empty():
		var id = stack.pop_back()
		if good.has(id):
			continue
		good[id] = true
		for prev in incoming.get(id, []):
			stack.append(prev)
	return good


# Every distinct route from start, as a list of choice indexes. Includes routes
# that end at a missing node or loop forever, so playing them shows the bug.
# Question "hubs" that loop back to a choice are not repeated here; they are
# covered by test_every_option_leads_on_to_another_choice_or_an_ending.
static func all_routes(start_id: String, nodes: Dictionary) -> Array:
	var routes := []
	_walk(start_id, nodes, [], {}, routes)
	return routes


static func _walk(id: String, nodes: Dictionary, picks: Array, visited: Dictionary, routes: Array) -> void:
	if not nodes.has(id):
		routes.append(picks.duplicate())  # broken link or dead end
		return
	if visited.has(id):
		if visited[id] == picks.size():
			routes.append(picks.duplicate())  # looped with no choice in between
		return
	var node: Dictionary = nodes[id]
	if is_ending(node):
		routes.append(picks.duplicate())
		return
	visited[id] = picks.size()
	if is_decision(node):
		var targets := next_ids(node)
		for i in targets.size():
			var p := picks.duplicate()
			p.append(i)
			_walk(targets[i], nodes, p, visited, routes)
	else:
		_walk(node.get("next", ""), nodes, picks, visited, routes)
	visited.erase(id)


# Turns a list of problems into one readable failure message.
static func report(problems: Array, limit := 10) -> String:
	if problems.is_empty():
		return ""
	var shown := problems.slice(0, limit)
	var text := "%d problem(s):\n  - %s" % [problems.size(), "\n  - ".join(shown)]
	if problems.size() > limit:
		text += "\n  ... and %d more" % (problems.size() - limit)
	return text
