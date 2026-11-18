extends Control

@onready var continue_button = $CenterContainer/VBoxContainer/ButtonContainer/ContinueButton
@onready var quit_button = $CenterContainer/VBoxContainer/ButtonContainer/QuitButton

func _ready():
	# load_game() returns {} for a missing or unreadable save, so a damaged file just hides Continue.
	var save = SaveManager.load_game()
	continue_button.visible = not save.is_empty()
	if save.get("checkpoint", false):
		continue_button.text = "Retry Last Choice"

	# A browser tab can't be closed by the game, so Quit would do nothing there.
	quit_button.visible = not OS.has_feature("web")

func _on_continue_button_pressed():
	SaveManager.pending_load = SaveManager.load_game()
	get_tree().change_scene_to_file("res://Scenes/Main.tscn")

func _on_start_button_pressed() -> void:
	SaveManager.delete_save()
	get_tree().change_scene_to_file("res://Scenes/Main.tscn")

# The story autosaves at every line, so quitting loses nothing and Continue works next launch.
func _on_quit_button_pressed():
	get_tree().quit()
