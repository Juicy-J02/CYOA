# The Main scene's UI and World reacting to StoryManager (R1, R4).
# Loads the real Main.tscn, which starts the story on its own.
extends GutTest

const MainScene = preload("res://Scenes/Main.tscn")

var main
var ui
var world


func before_each():
	InputManager.input_blocked = false
	main = add_child_autofree(MainScene.instantiate())
	ui = main.get_node("UI")
	world = main.get_node("World")


func after_each():
	InputManager.input_blocked = false


func _choice_buttons() -> Array:
	return ui.choice_buttons.get_children().filter(
		func(c): return c is Button and not c.is_queued_for_deletion())


# --- Starting the game --------------------------------------------------------

func test_game_starts_on_first_scene_with_its_background():
	assert_eq(StoryManager.current_node_id, "zach_act1_scene1_0")
	assert_not_null(world.background.texture, "Opening background should be showing")
	assert_eq(world.background.texture.resource_path, "res://Assets/Backgrounds/Bedroom.jpg")
	assert_eq(ui.name_label.text, "Zach")


# --- Dialogue box -------------------------------------------------------------

func test_dialogue_shows_speaker_and_text():
	StoryManager.dialogue_requested.emit("Mom", "Hi there")
	assert_true(ui.get_node("Panel").visible)
	assert_true(ui.name_plate.visible)
	assert_eq(ui.name_label.text, "Mom")
	assert_eq(ui.text_box.text, "Hi there")
	assert_false(ui.choice_buttons.visible, "Choice buttons should be hidden during dialogue")


func test_narration_hides_the_name_plate():
	StoryManager.dialogue_requested.emit("", "The stranger creates a portal.")
	assert_false(ui.name_plate.visible)
	assert_eq(ui.text_box.text, "The stranger creates a portal.")


func test_pause_hides_the_dialogue_panel():
	StoryManager.pause_request.emit()
	assert_false(ui.get_node("Panel").visible)


func test_dialogue_after_pause_shows_panel_again():
	StoryManager.pause_request.emit()
	StoryManager.dialogue_requested.emit("Zach", "Back")
	assert_true(ui.get_node("Panel").visible)


# --- Choice buttons -----------------------------------------------------------

func test_one_button_per_option_with_its_text():
	StoryManager.choices_requested.emit([
		{"text": "Sneak out the back door", "next": "back_door_background"},
		{"text": "Sneak out the window", "next": "window_background"},
	])
	var labels = _choice_buttons().map(func(b): return b.text)
	assert_eq(labels, ["Sneak out the back door", "Sneak out the window"])
	assert_true(ui.choice_buttons.visible)
	assert_false(ui.text_box.visible, "Dialogue text should hide while choosing")


func test_new_choices_replace_old_buttons():
	StoryManager.choices_requested.emit([{"text": "A", "next": "x"}, {"text": "B", "next": "y"}, {"text": "C", "next": "z"}])
	StoryManager.choices_requested.emit([{"text": "D", "next": "x"}, {"text": "E", "next": "y"}])
	await wait_process_frames(1)
	var labels = _choice_buttons().map(func(b): return b.text)
	assert_eq(labels, ["D", "E"])


func test_each_button_plays_the_node_it_names():
	# R1: every button loads the node its next field names.
	var options := [
		{"text": "Go", "next": "zach_act1_scene1_4", "line": "Give me a minute. Security's kinda tight tonight."},
		{"text": "Stay", "next": "zach_act1_scene1_3", "line": "*groans*"},
		{"text": "Argue", "next": "zach_act1_scene1_1", "line": "No I'm not!"},
	]
	for i in options.size():
		StoryManager.choices_requested.emit(options)
		_choice_buttons()[i].pressed.emit()
		assert_eq(StoryManager.current_node_id, options[i].next, "Button '%s' went to the wrong node" % options[i].text)
		assert_eq(ui.text_box.text, options[i].line)
		await wait_process_frames(1)  # let the old buttons free


# --- World (backgrounds and characters) ---------------------------------------

func _characters() -> Array:
	return world.get_children().filter(
		func(c): return c is Sprite2D and c != world.background and not c.is_queued_for_deletion())


func test_character_request_adds_a_sprite_at_the_position():
	StoryManager.character_request.emit("res://Assets/Characters/narrator.png", Vector2(300, 200))
	var chars := _characters()
	assert_eq(chars.size(), 1)
	if chars.size() == 1:
		assert_eq(chars[0].position, Vector2(300, 200))


func test_new_background_clears_characters():
	StoryManager.character_request.emit("res://Assets/Characters/narrator.png", Vector2(300, 200))
	StoryManager.background_request.emit("res://Assets/Backgrounds/Park.jpg")
	assert_eq(_characters().size(), 0, "Characters from the last scene should be removed")
	assert_eq(world.background.texture.resource_path, "res://Assets/Backgrounds/Park.jpg")


func test_empty_background_clears_the_image():
	StoryManager.background_request.emit("")
	assert_null(world.background.texture)
