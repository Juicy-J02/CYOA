extends Control

@onready var continue_button = $CenterContainer/VBoxContainer/ButtonContainer/ContinueButton

func _ready():
	continue_button.visible = SaveManager.has_save()
	if SaveManager.has_save() and SaveManager.load_game().checkpoint:
		continue_button.text = "Retry Last Choice"

func _on_continue_button_pressed():
	SaveManager.pending_load = SaveManager.load_game()
	get_tree().change_scene_to_file("res://Scenes/Main.tscn")

func _on_start_button_pressed() -> void:
	SaveManager.delete_save()
	get_tree().change_scene_to_file("res://Scenes/Main.tscn")

func _on_endings_button_pressed():
	get_tree().change_scene_to_file("res://Scenes/Endings.tscn")
