# StoryManager behaviour (R1, R2 current node), using a small fake story so the
# tests don't break every time the real script changes.
#
# StoryManager is a partial double: real code runs, except end_game(), which is
# stubbed out because it would swap out the GUT runner's scene.
extends GutTest

const StoryManagerScript = preload("res://Scripts/storyManager.gd")
const BG := "res://Assets/Backgrounds/Bedroom.jpg"
const CHAR := "res://Assets/Characters/narrator.png"

const FAKE_STORY := {
	"bg": {"type": "background", "background": BG, "next": "char"},
	"char": {"type": "character", "character": CHAR, "position": {"x": 10, "y": 20}, "next": "line1"},
	"line1": {"type": "dialogue", "speaker": "A", "text": "Hello", "next": "line2"},
	"line2": {"type": "dialogue", "speaker": "", "text": "Narration", "next": "ask"},
	"ask": {"type": "choice", "choices": [
		{"text": "Left", "next": "left"},
		{"text": "Right", "next": "right"},
	]},
	"left": {"type": "dialogue", "speaker": "B", "text": "Went left", "next": "rest"},
	"right": {"type": "dialogue", "speaker": "B", "text": "Went right", "next": "the_end"},
	"rest": {"type": "pause", "next": "after_pause"},
	"after_pause": {"type": "dialogue", "speaker": "B", "text": "Back again", "next": "the_end"},
	"the_end": {"type": "end_game"},
}

var sm


func before_each():
	sm = partial_double(StoryManagerScript).new()
	stub(sm, "end_game").to_do_nothing()
	sm.story_data = FAKE_STORY.duplicate(true)
	autofree(sm)
	InputManager.input_blocked = false
	watch_signals(sm)


func after_each():
	InputManager.input_blocked = false


# --- Starting and auto-advancing -------------------------------------------

func test_start_runs_background_and_character_then_stops_on_dialogue():
	sm.start_story("bg")
	assert_signal_emitted_with_parameters(sm, "background_request", [BG])
	assert_signal_emitted_with_parameters(sm, "character_request", [CHAR, Vector2(10, 20)])
	assert_signal_emitted_with_parameters(sm, "dialogue_requested", ["A", "Hello"])
	assert_eq(sm.current_node_id, "line1", "Should wait on the first dialogue for a click")


func test_dialogue_unblocks_input():
	InputManager.input_blocked = true
	sm.play_node("line1")
	assert_false(InputManager.input_blocked)


# --- Clicking through dialogue -----------------------------------------------

func test_click_advances_to_next_node():
	sm.play_node("line1")
	sm.play_next_node()
	assert_eq(sm.current_node_id, "line2")
	assert_signal_emitted_with_parameters(sm, "dialogue_requested", ["", "Narration"])


func test_current_node_is_tracked_after_each_step():
	sm.start_story("bg")
	var seen := [sm.current_node_id]
	sm.play_next_node()
	seen.append(sm.current_node_id)
	sm.play_next_node()
	seen.append(sm.current_node_id)
	sm.choice_selected("left")
	seen.append(sm.current_node_id)
	assert_eq(seen, ["line1", "line2", "ask", "left"])


# --- Choices -----------------------------------------------------------------

func test_choice_emits_options_and_blocks_input():
	sm.play_node("ask")
	assert_signal_emitted_with_parameters(sm, "choices_requested", [FAKE_STORY["ask"]["choices"]])
	assert_true(InputManager.input_blocked, "Clicks must be ignored while choices are showing")


func test_click_while_choices_showing_does_nothing():
	sm.play_node("ask")
	sm.play_next_node()
	sm.play_next_node()
	assert_eq(sm.current_node_id, "ask", "Clicking the background must not skip the choice")
	assert_signal_emit_count(sm, "dialogue_requested", 0)


func test_picking_each_option_goes_to_its_node():
	sm.play_node("ask")
	sm.choice_selected("left")
	assert_eq(sm.current_node_id, "left")
	assert_signal_emitted_with_parameters(sm, "dialogue_requested", ["B", "Went left"])

	sm.play_node("ask")
	sm.choice_selected("right")
	assert_eq(sm.current_node_id, "right")
	assert_signal_emitted_with_parameters(sm, "dialogue_requested", ["B", "Went right"])


func test_input_works_again_after_a_choice():
	sm.play_node("ask")
	sm.choice_selected("left")
	assert_false(InputManager.input_blocked)
	sm.play_next_node()
	assert_eq(sm.current_node_id, "rest")


# --- Pause -------------------------------------------------------------------

func test_pause_emits_and_click_resumes():
	sm.play_node("rest")
	assert_signal_emitted(sm, "pause_request")
	assert_false(InputManager.input_blocked, "Player must be able to click past a pause")
	sm.play_next_node()
	assert_eq(sm.current_node_id, "after_pause")


# --- Endings -----------------------------------------------------------------

func test_reaching_an_end_node_calls_end_game():
	sm.play_node("right")
	sm.play_next_node()
	assert_eq(sm.current_node_id, "the_end")
	assert_called(sm, "end_game")


func test_end_game_not_called_before_the_end():
	sm.start_story("bg")
	sm.play_next_node()
	assert_not_called(sm, "end_game")


# --- Bad data ----------------------------------------------------------------

func test_missing_node_reports_an_error_instead_of_crashing():
	sm.play_node("does_not_exist")
	assert_push_error("Story node not found")
	assert_signal_not_emitted(sm, "dialogue_requested")
	assert_signal_not_emitted(sm, "choices_requested")
