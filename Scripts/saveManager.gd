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
