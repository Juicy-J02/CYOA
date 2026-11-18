extends Control

@onready var items = %Items
@onready var continue_button = %ContinueButton
@onready var quit_button = %QuitButton

func _ready():
	# load_game() returns {} for a missing or unreadable save, so a damaged file just hides Continue.
	var save = SaveManager.load_game()
	continue_button.get_parent().visible = not save.is_empty()
	if save.get("checkpoint", false):
		continue_button.text = "Retry Last Choice"

	# A browser tab can't be closed by the game, so Quit would do nothing there.
	quit_button.get_parent().visible = not OS.has_feature("web")

	# The gold marker follows whichever item is selected, by mouse or by keyboard (arrow keys
	# and Enter). Hovering an item selects it, so there's only ever one marker.
	for row in items.get_children():
		var button = row.get_child(1)
		var marker = row.get_child(0)
		button.focus_entered.connect(func(): marker.text = "›")
		button.focus_exited.connect(func(): marker.text = "")
		button.mouse_entered.connect(button.grab_focus)

	# Start with the first visible item selected (Continue, or New Game with no save).
	for row in items.get_children():
		if row.visible:
			row.get_child(1).grab_focus()
			break

func _on_continue_button_pressed():
	SaveManager.pending_load = SaveManager.load_game()
	get_tree().change_scene_to_file("res://Scenes/Main.tscn")

func _on_start_button_pressed() -> void:
	SaveManager.delete_save()
	get_tree().change_scene_to_file("res://Scenes/Main.tscn")

func _on_map_button_pressed():
	get_tree().change_scene_to_file("res://Scenes/MapScreen.tscn")

# The story autosaves at every line, so quitting loses nothing and Continue works next launch.
func _on_quit_button_pressed():
	get_tree().quit()
