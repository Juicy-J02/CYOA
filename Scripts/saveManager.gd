extends Node

const SAVE_PATH = "user://savegame.cfg"

# A state for main.gd to resume from when the story scene loads (empty = new game).
# Continue fills it from the save file; Retry Last Choice fills it from StoryManager.
var pending_load = {}

# --- Save game (one autosave slot, replaced at every step) ---

func has_save():
	return FileAccess.file_exists(SAVE_PATH)

# checkpoint = true marks a save written at an ending that points back at the last choice,
# so the start screen can label it "Retry Last Choice" instead of "Continue".
func save_game(node_id, background, characters, last_choice, checkpoint = false):
	var config = ConfigFile.new()
	config.set_value("save", "node_id", node_id)
	config.set_value("save", "background", background)
	config.set_value("save", "characters", characters)
	config.set_value("save", "last_choice", last_choice)
	config.set_value("save", "checkpoint", checkpoint)
	config.save(SAVE_PATH)

# Returns {} when there's no usable save: a missing file, one that can't be read, or one
# without a story position. Callers treat {} as "no save", so a damaged file never crashes.
func load_game():
	var config = ConfigFile.new()
	var error = config.load(SAVE_PATH)
	if error != OK:
		return {}

	var state = clean_state({
		"node_id": config.get_value("save", "node_id", ""),
		"background": config.get_value("save", "background", ""),
		"characters": config.get_value("save", "characters", []),
	})
	if state.is_empty():
		return {}

	var last_choice = config.get_value("save", "last_choice", {})
	state["last_choice"] = clean_state(last_choice) if last_choice is Dictionary else {}
	var checkpoint = config.get_value("save", "checkpoint", false)
	state["checkpoint"] = checkpoint if checkpoint is bool else false
	return state

# Keeps only the fields StoryManager.continue_story reads, with the right types. A wrong
# background or a broken character entry is dropped; a missing story position means {}.
func clean_state(raw):
	var node_id = raw.get("node_id", "")
	if not node_id is String or node_id == "":
		return {}

	var background = raw.get("background", "")
	var characters = []
	var raw_characters = raw.get("characters", [])
	if raw_characters is Array:
		for character in raw_characters:
			if character is Dictionary and character.get("path") is String and character.get("position") is Vector2:
				characters.append({"path": character.path, "position": character.position})

	return {
		"node_id": node_id,
		"background": background if background is String else "",
		"characters": characters,
	}

func delete_save():
	if has_save():
		DirAccess.remove_absolute(SAVE_PATH)

# --- Story map progress (kept across playthroughs; New Game never clears it) ---
#
# Progress is stored by map group (see StoryMap.group_key), so copies of the same choice on
# different paths count as one. Options are stored by their button text for the same reason:
# the copies lead to different story ids but say the same thing.

const PROGRESS_PATH = "user://progress.cfg"

var groups_seen = {}     # group key -> true
var options_picked = {}  # "group key>option text" -> true
var endings_found = {}   # id of the line before end_game -> true

func _ready():
	load_progress()

func mark_group_seen(group):
	if groups_seen.has(group):
		return
	groups_seen[group] = true
	save_progress()

func has_seen_group(group):
	return groups_seen.has(group)

func record_option(group, option_text):
	var key = group + ">" + option_text
	if options_picked.has(key):
		return
	options_picked[key] = true
	save_progress()

func has_picked_option(group, option_text):
	return options_picked.has(group + ">" + option_text)

func record_ending(ending_id):
	if endings_found.has(ending_id):
		return
	endings_found[ending_id] = true
	save_progress()

func has_found_ending(ending_id):
	return endings_found.has(ending_id)

func save_progress():
	var config = ConfigFile.new()
	config.set_value("progress", "groups", groups_seen.keys())
	config.set_value("progress", "options", options_picked.keys())
	config.set_value("progress", "endings", endings_found.keys())
	config.save(PROGRESS_PATH)

# Like load_game, a damaged progress file never crashes: anything unreadable is skipped.
func load_progress():
	groups_seen = {}
	options_picked = {}
	endings_found = {}
	var config = ConfigFile.new()
	if config.load(PROGRESS_PATH) != OK:
		return
	groups_seen = read_keys(config, "groups")
	options_picked = read_keys(config, "options")
	endings_found = read_keys(config, "endings")

func read_keys(config, key):
	var out = {}
	var list = config.get_value("progress", key, [])
	if list is Array:
		for item in list:
			if item is String:
				out[item] = true
	return out

func delete_progress():
	groups_seen = {}
	options_picked = {}
	endings_found = {}
	if FileAccess.file_exists(PROGRESS_PATH):
		DirAccess.remove_absolute(PROGRESS_PATH)
