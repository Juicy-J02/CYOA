extends Node

signal dialogue_requested(speaker, text)
signal choices_requested(choices)
signal background_request(background_path)
signal character_request(character_paht, position)
signal pause_request

@onready var input_manager = $"../InputManager"

var current_node_id = ""
var previous_node_id = ""
var story_data = StoryData.story_data

# What's on screen right now, so a save can rebuild it.
var current_background = ""
var current_characters = []

# The most recent choice and the screen around it, for Game Over's "Retry Last Choice".
var last_choice = {}

# Node types where the story waits for the player. Background and character
# nodes move on immediately, so saving on them would be overwritten anyway.
const SAVE_TYPES = ["dialogue", "choice", "pause"]

func _ready():
	input_manager.left_click_sig.connect(play_next_node)

func start_story(start_id):
	# StoryManager is an autoload, so it still holds the last playthrough's state.
	current_background = ""
	current_characters = []
	last_choice = {}
	play_node(start_id)

func continue_story(save):
	current_background = save.background
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
	# Remembered so end_game knows which line led into it (that line identifies the ending).
	previous_node_id = current_node_id
	current_node_id = node_id

	if not story_data.has(node_id):
		push_error("Story node not found: " + node_id)
		return

	var node_data = story_data[node_id]
	SaveManager.mark_visited(node_id)

	if node_data.type in SAVE_TYPES:
		if node_data.type == "choice":
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
	# current_node_id is still the choice node here, since choices wait for the player.
	SaveManager.record_choice(current_node_id, next_node_id)

	# Remember the option's text; it becomes the ending's name if this path ends the story.
	for option in story_data[current_node_id].choices:
		if option.next == next_node_id:
			last_choice["picked"] = option.text

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

func pause(_node_data):
	InputManager.input_blocked = false
	pause_request.emit()

func end_game(_node_data):
	InputManager.input_blocked = true
	# Each ending is identified by the line that led here, and named after the last option picked.
	SaveManager.record_ending(previous_node_id, last_choice.get("picked", ""))

	# Keep a checkpoint at the last choice so players can come back and try another
	# option, even after closing the game. With no choice made yet, there's nothing to keep.
	if last_choice.is_empty():
		SaveManager.delete_save()
	else:
		SaveManager.save_game(last_choice.node_id, last_choice.background, last_choice.characters, {}, true)
	get_tree().change_scene_to_file("res://Scenes/GameOver.tscn")
	
