extends Node

signal dialogue_requested(speaker, text)
signal choices_requested(choices)
signal background_request(background_path)
signal character_request(character_paht, position)
signal pause_request

@onready var input_manager = $"../InputManager"

var current_node_id = ""
var story_data = StoryData.story_data

func _ready():
	input_manager.left_click_sig.connect(play_next_node)
	
func start_story(start_id):
	play_node(start_id)

func play_node(node_id):
	current_node_id = node_id
	
	if not story_data.has(node_id):
		push_error("Story node not found: " + node_id)
		return
	
	var node_data = story_data[node_id]
	
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
	play_node(next_node_id)

func play_dialogue(node_data):
	InputManager.input_blocked = false
	dialogue_requested.emit(node_data.speaker, node_data.text)

func show_choices(node_data):
	InputManager.input_blocked = true
	choices_requested.emit(node_data.choices)

func change_background(node_data):
	background_request.emit(node_data.background)
	play_node(node_data.next)

func insert_character(node_data):
	character_request.emit(node_data.character, Vector2(node_data.position.x, node_data.position.y))
	play_node(node_data.next)

func pause(_node_data):
	InputManager.input_blocked = false
	pause_request.emit()

func end_game(_node_data):
	InputManager.input_blocked = true
	get_tree().change_scene_to_file("res://Scenes/GameOver.tscn")
	
