# Start screen and Game Over screen (R10: "New Game, Continue and Quit work;
# Continue is hidden with no save"). Buttons that change scenes aren't pressed here,
# because that would replace the GUT runner. Saving is sandboxed.
extends GutTest

const SaveSandbox = preload("res://test/save_sandbox.gd")
const StartScene = preload("res://Scenes/StartScreen.tscn")
const GameOverScene = preload("res://Scenes/GameOver.tscn")

var saved_last_choice


func before_all():
	SaveSandbox.protect()


func after_all():
	SaveSandbox.restore()


func before_each():
	SaveSandbox.clear()
	saved_last_choice = StoryManager.last_choice


func after_each():
	StoryManager.last_choice = saved_last_choice


func _open_start():
	var screen = add_child_autofree(StartScene.instantiate())
	await wait_process_frames(1)
	return screen


# Rows hide as a whole, so check the row (or the button if it has no row).
func _shown(button) -> bool:
	return button.is_visible_in_tree()


# --- Start screen ------------------------------------------------------------------

func test_no_save_hides_continue_and_selects_new_game():
	var screen = await _open_start()
	assert_false(_shown(screen.continue_button), "Continue must be hidden with no save")
	assert_true(_shown(screen.start_button))
	assert_true(screen.start_button.has_focus(), "New Game should start selected")


func test_save_shows_continue_and_selects_it():
	SaveManager.save_game("zach_act1_scene1_1", "", [], {})
	var screen = await _open_start()
	assert_true(_shown(screen.continue_button))
	assert_eq(screen.continue_button.text, "Continue")
	assert_true(screen.continue_button.has_focus(), "Continue should start selected")


func test_checkpoint_save_says_retry_last_choice():
	SaveManager.save_game("sneak_out", "", [], {}, true)
	var screen = await _open_start()
	assert_true(_shown(screen.continue_button))
	assert_eq(screen.continue_button.text, "Retry Last Choice")


func test_damaged_save_hides_continue_instead_of_crashing():
	var f := FileAccess.open(SaveManager.SAVE_PATH, FileAccess.WRITE)
	f.store_string("garbage ]]] {{{ =")
	f.close()
	var screen = await _open_start()
	assert_false(_shown(screen.continue_button))
	# Godot logs the parse error; that's expected, the point is that nothing crashes.
	assert_engine_error("ConfigFile parse error")


func test_map_and_quit_buttons_are_shown():
	var screen = await _open_start()
	assert_true(_shown(screen.map_button))
	assert_true(_shown(screen.quit_button), "Quit should show on desktop builds")


func test_hovering_a_button_selects_it():
	var screen = await _open_start()
	screen.map_button.mouse_entered.emit()
	assert_true(screen.map_button.has_focus())


# --- Game Over screen ----------------------------------------------------------------

func _open_game_over():
	return add_child_autofree(GameOverScene.instantiate())


func test_game_over_hides_retry_when_no_choice_was_made():
	StoryManager.last_choice = {}
	var screen = _open_game_over()
	assert_false(screen.last_choice_button.visible)


func test_game_over_offers_retry_after_a_choice():
	StoryManager.last_choice = {"node_id": "sneak_out", "background": "", "characters": []}
	var screen = _open_game_over()
	assert_true(screen.last_choice_button.visible)
	assert_true(screen.get_node("CenterContainer/VBoxContainer/ButtonContainer/RestartButton").visible)
	assert_true(screen.get_node("CenterContainer/VBoxContainer/ButtonContainer/ExitButton").visible)
