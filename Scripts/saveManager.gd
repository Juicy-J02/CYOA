extends Node

const SAVE_PATH = "user://savegame.cfg"
const PROGRESS_PATH = "user://progress.cfg"

# A state for main.gd to resume from when the story scene loads (empty = new game).
# Continue fills it from the save file; Retry Last Choice fills it from StoryManager.
var pending_load = {}

# visited and choices_made are used as sets: the keys are what matters, the values are always true.
var visited = {}
var choices_made = {}  # keys look like "sneak_out>window_background"
var endings = {}  # ending id (the line that led to the end) -> name (the last option picked)

func _ready():
	load_progress()

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

# --- Progress (kept across playthroughs, never reset by New Game) ---

func mark_visited(node_id):
	if visited.has(node_id):
		return
	visited[node_id] = true
	save_progress()

func has_visited(node_id):
	return visited.has(node_id)

# endings maps each ending's id to its name (the last option picked on the way there).
func record_ending(ending_id, title):
	if endings.has(ending_id):
		return
	endings[ending_id] = title
	save_progress()

func has_ending(ending_id):
	return endings.has(ending_id)

func get_ending_title(ending_id):
	return endings.get(ending_id, "")

# A choice option is identified by the choice node plus where that option leads.
func record_choice(choice_id, next_id):
	var key = choice_id + ">" + next_id
	if choices_made.has(key):
		return
	choices_made[key] = true
	save_progress()

func has_choice(choice_id, next_id):
	return choices_made.has(choice_id + ">" + next_id)

func save_progress():
	var config = ConfigFile.new()
	config.set_value("progress", "visited", visited.keys())
	config.set_value("progress", "endings", endings)
	config.set_value("progress", "choices", choices_made.keys())
	config.save(PROGRESS_PATH)

func load_progress():
	var config = ConfigFile.new()
	if config.load(PROGRESS_PATH) != OK:
		return

	for node_id in config.get_value("progress", "visited", []):
		visited[node_id] = true
	var saved_endings = config.get_value("progress", "endings", {})
	# Older progress files stored endings as a plain list with no names.
	if saved_endings is Array:
		for ending_id in saved_endings:
			endings[ending_id] = ""
	else:
		endings = saved_endings
	for key in config.get_value("progress", "choices", []):
		choices_made[key] = true
