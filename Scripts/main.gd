extends Node

func _ready():
	var state = SaveManager.pending_load
	SaveManager.pending_load = {}

	# Ignore states that point at a story node that was renamed or removed.
	if not state.is_empty() and StoryData.story_data.has(state.node_id):
		StoryManager.continue_story(state)
		return

	StoryManager.start_story("act2_scene1_background")

# Escape goes back to the main menu. The story autosaves at every line, so Continue picks up
# right here.
func _unhandled_input(event):
	if event is InputEventKey and event.pressed and not event.echo and event.keycode == KEY_ESCAPE:
		# InputManager still hears clicks on the menu, and an unblocked click would advance
		# the story (and its save) in the background. Continue and New Game unblock it again.
		InputManager.input_blocked = true
		get_tree().change_scene_to_file("res://Scenes/StartScreen.tscn")
