extends Control

@onready var last_choice_button = $CenterContainer/VBoxContainer/ButtonContainer/LastChoiceButton

func _ready():
	# Only offer a retry if the story reached a choice this playthrough.
	last_choice_button.visible = not StoryManager.last_choice.is_empty()

func _on_restart_button_pressed():
	get_tree().change_scene_to_file("res://Scenes/Main.tscn")

func _on_last_choice_button_pressed():
	SaveManager.pending_load = StoryManager.last_choice
	get_tree().change_scene_to_file("res://Scenes/Main.tscn")

func _on_exit_button_pressed():
	get_tree().change_scene_to_file("res://Scenes/StartScreen.tscn")
