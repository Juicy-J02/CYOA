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

func load_game():
	var config = ConfigFile.new()
	var error = config.load(SAVE_PATH)
	if error != OK:
		return {}

	return {
		"node_id": config.get_value("save", "node_id", ""),
		"background": config.get_value("save", "background", ""),
		"characters": config.get_value("save", "characters", []),
		"last_choice": config.get_value("save", "last_choice", {}),
		"checkpoint": config.get_value("save", "checkpoint", false),
	}

func delete_save():
	if has_save():
		DirAccess.remove_absolute(SAVE_PATH)
