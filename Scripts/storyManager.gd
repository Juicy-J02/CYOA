extends Node

signal dialogue_requested(speaker, text)
signal choices_requested(choices)
signal background_request(background_path)
signal character_request(character_paht, position)
signal pause_request
signal qte_requested(prompt, seconds)
signal qte_finished(hit)

# How many seconds the player gets to hit a QTE. Change this one number to tune every QTE
# in the game. A single QTE can override it with a "time" field in the story data, e.g.
# {"type": "qte", "prompt": "STAB", "time": 3.0, ...}
var qte_seconds = 5.0

@onready var input_manager = $"../InputManager"

var current_node_id = ""
# The entry before the current one. When the story reaches end_game, this is the line that
# led there, which identifies the ending on the story map.
var previous_node_id = ""
var story_data = StoryData.story_data

# What's on screen right now, so a save can rebuild it.
var current_background = ""
var current_characters = []

# The most recent choice and the screen around it, for Game Over's "Retry Last Choice".
var last_choice = {}

# Node types where the story waits for the player. Background and character
# nodes move on immediately, so saving on them would be overwritten anyway.
const SAVE_TYPES = ["dialogue", "choice", "pause", "qte"]

# Node types the player decides at. They show on the Story Map, and "Retry Last Choice"
# goes back to the most recent one (so a missed QTE can be retried).
const DECISION_TYPES = ["choice", "qte"]

# The QTE on screen right now ({} when there isn't one), and how long is left on it.
var qte_node = {}
var qte_time_left = 0.0
var qte_total_time = 0.0

func _ready():
	input_manager.left_click_sig.connect(play_next_node)

func _process(delta):
	tick_qte(delta)

func start_story(start_id):
	# StoryManager is an autoload, so it still holds the last playthrough's state.
	cancel_qte()
	current_background = ""
	current_characters = []
	last_choice = {}
	play_node(start_id)

func continue_story(save):
	cancel_qte()
	# A background that was renamed or removed since the save was made shows blank instead.
	current_background = save.background if ResourceLoader.exists(save.background) else ""
	current_characters = []
	# A save carries its last choice; a retried choice doesn't, and re-records itself below.
	last_choice = save.get("last_choice", {})
	background_request.emit(current_background)

	for character in save.characters:
		# Skip art that was renamed or removed since the save was made.
		if not ResourceLoader.exists(character.path):
			continue
		current_characters.append(character)
		character_request.emit(character.path, character.position)

	play_node(save.node_id)

func play_node(node_id):
	previous_node_id = current_node_id
	current_node_id = node_id

	if not story_data.has(node_id):
		push_error("Story node not found: " + node_id)
		return

	var node_data = story_data[node_id]

	if node_data.type in SAVE_TYPES:
		if node_data.type in DECISION_TYPES:
			SaveManager.mark_group_seen(StoryMap.group_key(node_id, node_data))
			# Record the choice before saving, so the save includes it. duplicate(true)
			# copies the list, so characters added later don't change this snapshot.
			last_choice = {
				"node_id": node_id,
				"background": current_background,
				"characters": current_characters.duplicate(true),
			}
		SaveManager.save_game(node_id, current_background, current_characters, last_choice)

	match node_data.type:
		"dialogue":
			play_dialogue(node_data)
		
		"choice":
			show_choices(node_data)
		
		"background":
			change_background(node_data)
		
		"character":
			insert_character(node_data)
		
		"pause":
			pause(node_data)
		
		"qte":
			start_qte(node_data)
		
		"end_game":
			end_game(node_data)

func play_next_node():
	if InputManager.input_blocked:
		return
	if not story_data.has(current_node_id):
		return
	
	var node_data = story_data[current_node_id]
	play_node(node_data.next)

func choice_selected(next_node_id):
	# current_node_id is still the choice here, since choices wait for the player.
	var choice = story_data.get(current_node_id, {})
	for option in choice.get("choices", []):
		if option.next == next_node_id:
			SaveManager.record_option(StoryMap.group_key(current_node_id, choice), option.text)
			break
	play_node(next_node_id)

func play_dialogue(node_data):
	InputManager.input_blocked = false
	dialogue_requested.emit(node_data.speaker, node_data.text)

func show_choices(node_data):
	InputManager.input_blocked = true
	choices_requested.emit(node_data.choices)

func change_background(node_data):
	current_background = node_data.background
	# world.gd removes all characters when the background changes, so match it.
	current_characters = []
	background_request.emit(node_data.background)
	play_node(node_data.next)

func insert_character(node_data):
	var character_position = Vector2(node_data.position.x, node_data.position.y)
	current_characters.append({"path": node_data.character, "position": character_position})
	character_request.emit(node_data.character, character_position)
	play_node(node_data.next)

# --- QTEs ---
# A QTE shows a prompt (SHOOT, BLOCK...) with a countdown. Hitting it in time plays "next";
# running out of time plays "fail". Clicks on the story are blocked while it's up, so the
# only way through is the prompt (button, Space or Enter).

func start_qte(node_data):
	InputManager.input_blocked = true
	qte_node = node_data
	qte_total_time = float(node_data.get("time", qte_seconds))
	qte_time_left = qte_total_time
	qte_requested.emit(node_data.prompt, qte_total_time)

func is_qte_active():
	return not qte_node.is_empty()

# Counts the QTE down. Runs every frame from _process; tests call it directly.
func tick_qte(delta):
	if not is_qte_active():
		return
	qte_time_left -= delta
	if qte_time_left <= 0.0:
		qte_missed()

func qte_hit():
	if not is_qte_active():
		return
	finish_qte(true)

func qte_missed():
	if not is_qte_active():
		return
	finish_qte(false)

func finish_qte(hit):
	var node_data = qte_node
	var group = StoryMap.group_key(current_node_id, node_data)
	qte_node = {}
	qte_time_left = 0.0
	SaveManager.record_option(group, node_data.prompt if hit else StoryMap.QTE_MISS)
	qte_finished.emit(hit)
	play_node(node_data.next if hit else node_data.fail)

# Stops a QTE without hitting or missing it, e.g. when Escape leaves for the main menu.
# The save still points at the QTE, so Continue starts it again with the full time.
func cancel_qte():
	qte_node = {}
	qte_time_left = 0.0

func pause(_node_data):
	InputManager.input_blocked = false
	pause_request.emit()

func end_game(_node_data):
	InputManager.input_blocked = true
	SaveManager.record_ending(previous_node_id)

	# Keep a checkpoint at the last choice so players can come back and try another
	# option, even after closing the game. With no choice made yet, there's nothing to keep.
	if last_choice.is_empty():
		SaveManager.delete_save()
	else:
		SaveManager.save_game(last_choice.node_id, last_choice.background, last_choice.characters, {}, true)
	get_tree().change_scene_to_file("res://Scenes/GameOver.tscn")
	
