extends Control

# The start screen: the statue on the left, and the title and a text menu on the right.
# Each menu button sits in a row with a "Marker" label that shows "›" while that button is
# selected, and the whole row hides with the button. Buttons are found by their unique names
# (%ContinueButton etc.), so they can be moved around in the scene without changing this script.

@onready var continue_button = %ContinueButton
@onready var start_button = %StartButton
@onready var map_button = %MapButton
@onready var quit_button = %QuitButton

func _ready():
	# load_game() returns {} for a missing or unreadable save, so a damaged file just hides Continue.
	var save = SaveManager.load_game()
	set_shown(continue_button, not save.is_empty())
	if save.get("checkpoint", false):
		continue_button.text = "Retry Last Choice"

	# A browser tab can't be closed by the game, so Quit would do nothing there.
	set_shown(quit_button, not OS.has_feature("web"))

	# Hovering a button selects it, the same as arrow keys do, so only one item ever looks
	# selected. Enter presses the selected one.
	var buttons = [continue_button, start_button, map_button, quit_button]
	for button in buttons:
		button.mouse_entered.connect(button.grab_focus)
		var marker = button.get_parent().get_node_or_null("Marker")
		if marker:
			button.focus_entered.connect(func(): marker.text = "›")
			button.focus_exited.connect(func(): marker.text = "")

	# Start with the first visible button selected (Continue, or New Game with no save).
	for button in buttons:
		if button.is_visible_in_tree():
			button.grab_focus()
			break

# Hides a button, or its whole row when it sits in a row with a marker.
func set_shown(button, shown):
	if button.get_parent().has_node("Marker"):
		button.get_parent().visible = shown
	else:
		button.visible = shown

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
