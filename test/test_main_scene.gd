# The Main scene's UI and World reacting to StoryManager (R1, R4), and Main
# resuming from a save (R6). Loads the real Main.tscn, which starts the story on
# its own. Saving is sandboxed, so your own save isn't touched.
extends GutTest

const SaveSandbox = preload("res://test/save_sandbox.gd")
const H = preload("res://test/story_helpers.gd")
const MainScene = preload("res://Scenes/Main.tscn")

var main
var ui
var world


func before_all():
	SaveSandbox.protect()


func after_all():
	SaveSandbox.restore()


func before_each():
	SaveSandbox.clear()


func after_each():
	InputManager.input_blocked = false
	SaveManager.pending_load = {}


func _open_main():
	main = add_child_autofree(MainScene.instantiate())
	ui = main.get_node("UI")
	world = main.get_node("World")


func _choice_buttons() -> Array:
	return ui.choice_buttons.get_children().filter(
		func(c): return c is Button and not c.is_queued_for_deletion())


# The first dialogue line the story stops on, worked out from the real data so
# this test doesn't break when the script is rewritten.
func _first_dialogue_id() -> String:
	var nodes := H.all_nodes()
	var id := H.START_ID
	while nodes.has(id) and nodes[id].type in ["background", "character"]:
		id = nodes[id].next
	return id


func _first_background() -> String:
	var nodes := H.all_nodes()
	var id := H.START_ID
	while nodes.has(id) and nodes[id].type in ["background", "character"]:
		if nodes[id].type == "background":
			return nodes[id].background
		id = nodes[id].next
	return ""


# --- Starting the game --------------------------------------------------------

func test_new_game_starts_on_the_first_line_with_its_background():
	_open_main()
	var first := _first_dialogue_id()
	var line: Dictionary = H.all_nodes()[first]
	assert_eq(StoryManager.current_node_id, first)
	assert_eq(ui.text_box.text, line.text)
	if _first_background() != "":
		assert_not_null(world.background.texture, "Opening background should be showing")
		assert_eq(world.background.texture.resource_path, _first_background())


func test_resumes_from_a_save():
	# Continue: the start screen puts the save in pending_load, then opens Main.
	var nodes := H.all_nodes()
	var target := "zach_act1_scene1_1"
	assert_true(nodes.has(target), "Pick a node that exists in scene1.gd for this test")
	SaveManager.pending_load = {"node_id": target, "background": "res://Assets/Backgrounds/Park.jpg", "characters": []}
	_open_main()
	assert_eq(StoryManager.current_node_id, target)
	assert_eq(ui.text_box.text, nodes[target].text)
	assert_eq(world.background.texture.resource_path, "res://Assets/Backgrounds/Park.jpg")
	assert_eq(SaveManager.pending_load, {}, "pending_load should be cleared once used")


func test_save_on_a_renamed_node_starts_a_new_game():
	SaveManager.pending_load = {"node_id": "renamed_or_deleted_node", "background": "", "characters": []}
	_open_main()
	assert_eq(StoryManager.current_node_id, _first_dialogue_id())


# --- Dialogue box -------------------------------------------------------------

func test_dialogue_shows_speaker_and_text():
	_open_main()
	StoryManager.dialogue_requested.emit("Mom", "Hi there")
	assert_true(ui.get_node("Panel").visible)
	assert_true(ui.name_plate.visible)
	assert_eq(ui.name_label.text, "Mom")
	assert_eq(ui.text_box.text, "Hi there")
	assert_false(ui.choice_buttons.visible, "Choice buttons should be hidden during dialogue")


func test_narration_hides_the_name_plate():
	_open_main()
	StoryManager.dialogue_requested.emit("", "The stranger creates a portal.")
	assert_false(ui.name_plate.visible)
	assert_eq(ui.text_box.text, "The stranger creates a portal.")


func test_pause_hides_the_dialogue_panel():
	_open_main()
	StoryManager.pause_request.emit()
	assert_false(ui.get_node("Panel").visible)


func test_dialogue_after_pause_shows_panel_again():
	_open_main()
	StoryManager.pause_request.emit()
	StoryManager.dialogue_requested.emit("Zach", "Back")
	assert_true(ui.get_node("Panel").visible)


# --- Choice buttons -----------------------------------------------------------

func test_one_button_per_option_with_its_text():
	_open_main()
	StoryManager.choices_requested.emit([
		{"text": "Sneak out the back door", "next": "back_door_background"},
		{"text": "Sneak out the window", "next": "window_background"},
	])
	var labels = _choice_buttons().map(func(b): return b.text)
	assert_eq(labels, ["Sneak out the back door", "Sneak out the window"])
	assert_true(ui.choice_buttons.visible)
	assert_false(ui.text_box.visible, "Dialogue text should hide while choosing")


func test_new_choices_replace_old_buttons():
	_open_main()
	StoryManager.choices_requested.emit([{"text": "A", "next": "x"}, {"text": "B", "next": "y"}, {"text": "C", "next": "z"}])
	StoryManager.choices_requested.emit([{"text": "D", "next": "x"}, {"text": "E", "next": "y"}])
	await wait_process_frames(1)
	var labels = _choice_buttons().map(func(b): return b.text)
	assert_eq(labels, ["D", "E"])


func test_each_button_plays_the_node_it_names():
	# R1: every button loads the node its next field names. Uses three real
	# dialogue lines from the story so the text check follows the script.
	_open_main()
	var nodes := H.all_nodes()
	var targets := nodes.keys().filter(func(id): return nodes[id].type == "dialogue").slice(0, 3)
	var options := []
	for i in targets.size():
		options.append({"text": "Option %d" % (i + 1), "next": targets[i]})
	for i in options.size():
		StoryManager.choices_requested.emit(options)
		_choice_buttons()[i].pressed.emit()
		assert_eq(StoryManager.current_node_id, options[i].next, "Button '%s' went to the wrong node" % options[i].text)
		assert_eq(ui.text_box.text, nodes[options[i].next].text)
		await wait_process_frames(1)  # let the old buttons free


# --- World (backgrounds and characters) ---------------------------------------

func _characters() -> Array:
	return world.get_children().filter(
		func(c): return c is Sprite2D and c != world.background and not c.is_queued_for_deletion())


func test_character_request_adds_a_sprite_at_the_position():
	_open_main()
	StoryManager.background_request.emit("res://Assets/Backgrounds/Park.jpg")
	StoryManager.character_request.emit("res://Assets/Characters/narrator.png", Vector2(300, 200))
	var chars := _characters()
	assert_eq(chars.size(), 1)
	if chars.size() == 1:
		assert_eq(chars[0].position, Vector2(300, 200))


func test_new_background_clears_characters():
	_open_main()
	StoryManager.character_request.emit("res://Assets/Characters/narrator.png", Vector2(300, 200))
	StoryManager.background_request.emit("res://Assets/Backgrounds/Park.jpg")
	assert_eq(_characters().size(), 0, "Characters from the last scene should be removed")
	assert_eq(world.background.texture.resource_path, "res://Assets/Backgrounds/Park.jpg")


func test_empty_background_clears_the_image():
	_open_main()
	StoryManager.background_request.emit("")
	assert_null(world.background.texture)
