class_name StoryMap

# Builds the story map from the story data: which choices exist, what each option leads to,
# and where the endings are. The map screen draws it; StoryManager uses group_key() to record
# progress under the same names.
#
# Story entries can carry two optional fields just for the map:
#   "map": "Ex or Friends"       on a choice. Copies of the same choice on different paths share
#                                one name, so the map shows them as one choice. Also used as the
#                                choice's title on the map.
#   "ending": "Caught by Dad"    on the last line before end_game. The ending's title on the map.

# The button text a missed QTE is recorded under, so the map can show "Miss" as an option.
const QTE_MISS = "Miss"

# Choices and QTEs are the player's decisions; both show on the map as cards.
static func is_decision(node_data):
	return node_data.get("type", "") in ["choice", "qte"]

# The options a decision offers, as [{text, next}]. A QTE has two: hit it, or miss it.
static func options_of(node_data):
	if node_data.get("type", "") == "qte":
		return [
			{"text": node_data.get("prompt", ""), "next": node_data.get("next", "")},
			{"text": QTE_MISS, "next": node_data.get("fail", "")},
		]
	return node_data.get("choices", [])

# Choices with the same "map" name are one group. Without one, a choice is its own group.
static func group_key(node_id, node_data):
	return node_data.get("map", node_id)

static func group_title(node_id, node_data):
	# "sneak_out" becomes "Sneak Out".
	return node_data.get("map", node_id.capitalize())

static func ending_title(ending_id, node_data):
	return node_data.get("ending", ending_id.capitalize())

# Follows "next" from node_id through dialogue, art and pauses until the story reaches the
# player's next decision. Returns {"kind": "group", "id": group key}, {"kind": "ending",
# "id": the line before end_game}, or {} for a broken link or a loop with no choice in it.
static func follow(story_data, node_id, previous_id = ""):
	var seen = {}
	while story_data.has(node_id) and not seen.has(node_id):
		seen[node_id] = true
		var node_data = story_data[node_id]
		if is_decision(node_data):
			return {"kind": "group", "id": group_key(node_id, node_data)}
		match node_data.get("type", ""):
			"end_game":
				return {"kind": "ending", "id": previous_id}
		previous_id = node_id
		node_id = node_data.get("next", "")
	return {}

# Returns:
#   start:   where the story first leads (a target as returned by follow)
#   groups:  group key -> {title, options: [{text, targets: [target, ...]}]}
#   endings: ending id -> {title}
#   order:   group keys in the order the story reaches them
# Only choices and endings reachable from start_id are included, so story the player can't
# get to doesn't count toward the map's totals.
static func build(story_data, start_id):
	var all_groups = {}
	for node_id in story_data:
		var node_data = story_data[node_id]
		if not is_decision(node_data):
			continue
		var key = group_key(node_id, node_data)
		if not all_groups.has(key):
			all_groups[key] = {"title": group_title(node_id, node_data), "options": []}
		var options = all_groups[key].options
		for option in options_of(node_data):
			var target = follow(story_data, option.get("next", ""), node_id)
			# Copies of a choice list the same options; merge them by their button text.
			var merged = null
			for existing in options:
				if existing.text == option.get("text", ""):
					merged = existing
			if merged == null:
				merged = {"text": option.get("text", ""), "targets": []}
				options.append(merged)
			if not target.is_empty() and not target in merged.targets:
				merged.targets.append(target)

	var start = follow(story_data, start_id)
	var groups = {}
	var endings = {}
	var order = []
	var todo = [start]
	while not todo.is_empty():
		var target = todo.pop_front()
		if target.is_empty():
			continue
		if target.kind == "ending":
			if not endings.has(target.id) and story_data.has(target.id):
				endings[target.id] = {"title": ending_title(target.id, story_data[target.id])}
			continue
		if groups.has(target.id) or not all_groups.has(target.id):
			continue
		groups[target.id] = all_groups[target.id]
		order.append(target.id)
		for option in all_groups[target.id].options:
			todo.append_array(option.targets)

	return {"start": start, "groups": groups, "endings": endings, "order": order}
