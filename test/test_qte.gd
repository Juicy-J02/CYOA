# Timed scenes / QTEs (R12: "Clicking in time takes the success branch; timing out
# takes the failed path, every time").
#
# The first half drives StoryManager with a fake story and a fake clock (tick_qte), so
# the tests are instant. The second half checks the prompt and timer bar in the real
# Main scene. Saving is sandboxed, so your own save isn't touched.
extends GutTest

const SaveSandbox = preload("res://test/save_sandbox.gd")
const StoryManagerScript = preload("res://Scripts/storyManager.gd")
const MainScene = preload("res://Scenes/Main.tscn")

const FAKE_STORY := {
	"line": {"type": "dialogue", "speaker": "", "text": "Watch out!", "next": "q"},
	"q": {"type": "qte", "map": "Test QTE", "prompt": "SHOOT", "next": "hit", "fail": "missed"},
	"q_fast": {"type": "qte", "map": "Fast QTE", "prompt": "STAB", "time": 1.0, "next": "hit", "fail": "missed"},
	"hit": {"type": "dialogue", "speaker": "", "text": "Got it.", "next": "the_end"},
	"missed": {"type": "dialogue", "speaker": "", "text": "Too slow.", "next": "the_end"},
	"the_end": {"type": "end_game"},
}

var sm


func before_all():
	SaveSandbox.protect()


func after_all():
	StoryManager.cancel_qte()
	SaveSandbox.restore()


func before_each():
	SaveSandbox.clear()
	sm = partial_double(StoryManagerScript).new()
	stub(sm, "end_game").to_do_nothing()
	sm.story_data = FAKE_STORY.duplicate(true)
	autofree(sm)
	watch_signals(sm)


func after_each():
	StoryManager.cancel_qte()
	InputManager.input_blocked = false


# --- Starting a QTE -------------------------------------------------------------

func test_default_time_is_five_seconds():
	assert_eq(sm.qte_seconds, 5.0, "qte_seconds in storyManager.gd sets every QTE's time")


func test_qte_starts_with_its_prompt_and_the_default_time():
	sm.play_node("q")
	assert_true(sm.is_qte_active())
	assert_signal_emitted_with_parameters(sm, "qte_requested", ["SHOOT", 5.0])
	assert_eq(sm.qte_time_left, 5.0)


func test_clicks_on_the_story_cannot_skip_a_qte():
	sm.play_node("q")
	assert_true(InputManager.input_blocked)
	sm.play_next_node()
	sm.play_next_node()
	assert_eq(sm.current_node_id, "q")


# --- Hitting it in time -------------------------------------------------------------

func test_hit_in_time_takes_the_success_branch():
	sm.play_node("q")
	sm.tick_qte(2.0)
	sm.qte_hit()
	assert_eq(sm.current_node_id, "hit")
	assert_false(sm.is_qte_active())
	assert_signal_emitted_with_parameters(sm, "qte_finished", [true])


func test_hit_at_the_last_moment_still_counts():
	sm.play_node("q")
	sm.tick_qte(4.99)
	sm.qte_hit()
	assert_eq(sm.current_node_id, "hit")


func test_hitting_many_times_only_counts_once():
	sm.play_node("q")
	sm.qte_hit()
	sm.qte_hit()
	sm.qte_hit()
	assert_signal_emit_count(sm, "qte_finished", 1)
	assert_eq(sm.current_node_id, "hit")


func test_story_clicks_work_again_after_the_qte():
	sm.play_node("q")
	sm.qte_hit()
	assert_false(InputManager.input_blocked)


# --- Running out of time ---------------------------------------------------------------

func test_too_late_takes_the_fail_branch():
	sm.play_node("q")
	sm.tick_qte(5.01)
	assert_eq(sm.current_node_id, "missed")
	assert_false(sm.is_qte_active())
	assert_signal_emitted_with_parameters(sm, "qte_finished", [false])


func test_running_out_exactly_at_the_limit_is_a_miss():
	sm.play_node("q")
	sm.tick_qte(5.0)
	assert_eq(sm.current_node_id, "missed")


func test_time_adds_up_frame_by_frame():
	sm.play_node("q")
	for i in 4:
		sm.tick_qte(1.0)
	assert_eq(sm.current_node_id, "q", "4 of 5 seconds used, still time left")
	sm.tick_qte(1.0)
	assert_eq(sm.current_node_id, "missed")


func test_hitting_after_time_ran_out_does_nothing():
	sm.play_node("q")
	sm.tick_qte(6.0)
	sm.qte_hit()
	assert_eq(sm.current_node_id, "missed")
	assert_signal_emit_count(sm, "qte_finished", 1)


func test_same_result_every_time():
	for attempt in 3:
		sm.play_node("q")
		sm.tick_qte(3.0)
		sm.qte_hit()
		assert_eq(sm.current_node_id, "hit", "Attempt %d" % (attempt + 1))
		sm.play_node("q")
		sm.tick_qte(5.5)
		assert_eq(sm.current_node_id, "missed", "Attempt %d" % (attempt + 1))


# --- Changing the time ---------------------------------------------------------------

func test_changing_qte_seconds_changes_every_qte():
	sm.qte_seconds = 2.0
	sm.play_node("q")
	assert_signal_emitted_with_parameters(sm, "qte_requested", ["SHOOT", 2.0])
	sm.tick_qte(2.1)
	assert_eq(sm.current_node_id, "missed")


func test_a_time_field_overrides_the_default():
	sm.play_node("q_fast")
	assert_signal_emitted_with_parameters(sm, "qte_requested", ["STAB", 1.0])
	sm.tick_qte(1.1)
	assert_eq(sm.current_node_id, "missed")


# --- Saving, Retry and leaving -------------------------------------------------------------

func test_qte_is_saved_and_is_the_retry_point():
	sm.play_node("line")
	sm.play_next_node()  # reaches the QTE
	assert_eq(SaveManager.load_game().get("node_id"), "q")
	assert_eq(sm.last_choice.get("node_id"), "q", "Retry Last Choice should bring back a missed QTE")


func test_continue_restarts_the_qte_with_full_time():
	sm.play_node("q")
	sm.tick_qte(4.0)
	var save = SaveManager.load_game()
	var fresh = partial_double(StoryManagerScript).new()
	stub(fresh, "end_game").to_do_nothing()
	fresh.story_data = FAKE_STORY.duplicate(true)
	autofree(fresh)
	fresh.continue_story(save)
	assert_true(fresh.is_qte_active())
	assert_eq(fresh.qte_time_left, 5.0)


func test_cancel_stops_the_timer():
	# Escape to the main menu calls this, so the QTE can't time out behind the menu.
	sm.play_node("q")
	sm.cancel_qte()
	sm.tick_qte(10.0)
	assert_eq(sm.current_node_id, "q")
	assert_false(sm.is_qte_active())


func test_starting_a_new_story_cancels_an_old_qte():
	sm.play_node("q")
	sm.start_story("line")
	sm.tick_qte(10.0)
	assert_eq(sm.current_node_id, "line")


# --- Story Map --------------------------------------------------------------------------------

func test_hit_and_miss_are_recorded_for_the_map():
	sm.play_node("q")
	assert_true(SaveManager.has_seen_group("Test QTE"))
	sm.qte_hit()
	assert_true(SaveManager.has_picked_option("Test QTE", "SHOOT"))
	sm.play_node("q")
	sm.tick_qte(6.0)
	assert_true(SaveManager.has_picked_option("Test QTE", "Miss"))


# --- The prompt on screen (real Main scene and story) -----------------------------------------------

const REAL_QTE := "act3_scene1_ueo_qte_shoot"


func _open_main():
	var main = add_child_autofree(MainScene.instantiate())
	return main.get_node("UI")


func test_prompt_shows_with_a_full_timer_bar():
	var ui = _open_main()
	assert_true(StoryData.story_data.has(REAL_QTE), "Pick a QTE that exists in scene7.gd for this test")
	StoryManager.play_node(REAL_QTE)
	assert_true(ui.qte_box.visible)
	assert_eq(ui.qte_button.text, "SHOOT!")
	assert_almost_eq(ui.qte_bar.value, 1.0, 0.01)
	assert_false(ui.text_box.visible, "Dialogue text should hide during a QTE")
	assert_true(ui.qte_button.has_focus(), "Focused, so Space or Enter works too")


func test_bar_empties_as_time_runs_out():
	var ui = _open_main()
	StoryManager.play_node(REAL_QTE)
	StoryManager.tick_qte(StoryManager.qte_seconds * 0.75)
	await wait_process_frames(1)
	assert_almost_eq(ui.qte_bar.value, 0.25, 0.05)


func test_pressing_the_prompt_hits_it():
	var ui = _open_main()
	StoryManager.play_node(REAL_QTE)
	ui.qte_button.pressed.emit()
	assert_eq(StoryManager.current_node_id, StoryData.story_data[REAL_QTE].next)
	assert_false(ui.qte_box.visible)
	assert_true(ui.text_box.visible)


func test_running_out_of_time_shows_the_fail_path():
	var ui = _open_main()
	StoryManager.play_node(REAL_QTE)
	StoryManager.tick_qte(StoryManager.qte_seconds + 0.1)
	assert_false(ui.qte_box.visible)
	assert_eq(ui.text_box.text, "Game Over.")
