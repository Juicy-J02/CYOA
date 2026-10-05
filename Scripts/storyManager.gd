extends Node

signal dialogue_requested(speaker, text)
signal choices_requested(choices)

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
		return
	
	var node_data = story_data[node_id]
	
	match node_data.type:
		"dialogue":
			play_dialogue(node_data)
		
		"choice":
			show_choices(node_data)

func play_next_node():
	if InputManager.input_blocked:
		return
	
	var node_data = story_data[current_node_id]
	play_node(node_data["next"])

func choice_selected(next_node_id):
	play_node(next_node_id)

func play_dialogue(node_data):
	InputManager.input_blocked = false
	dialogue_requested.emit(node_data.speaker, node_data.text)

func show_choices(node_data):
	InputManager.input_blocked = true
	choices_requested.emit(node_data.choices)
