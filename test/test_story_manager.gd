# StoryManager behaviour (R1, R2, R6), using a small fake story so the tests don't
# break every time the real script changes.
#
# StoryManager is a partial double: real code runs, except end_game(), which is
# stubbed out because it would swap out the GUT runner's scene.
# Saving is sandboxed, so these tests never touch your own save.
extends GutTest

const SaveSandbox = preload("res://test/save_sandbox.gd")
const StoryManagerScript = preload("res://Scripts/storyManager.gd")
const BG := "res://Assets/Backgrounds/Bedroom.jpg"
const BG2 := "res://Assets/Backgrounds/Park.jpg"
const CHAR := "res://Assets/Characters/narrator.png"

const FAKE_STORY := {
	"bg": {"type": "background", "background": BG, "next": "char"},
	"char": {"type": "character", "character": CHAR, "position": {"x": 10, "y": 20}, "next": "line1"},
	"line1": {"type": "dialogue", "speaker": "A", "text": "Hello", "next": "line2"},
	"line2": {"type": "dialogue", "speaker": "", "text": "Narration", "next": "ask"},
	"ask": {"type": "choice", "map": "Left or Right", "choices": [
		{"text": "Left", "next": "left"},
		{"text": "Right", "next": "right"},
	]},
	"left": {"type": "dialogue", "speaker": "B", "text": "Went left", "next": "rest"},
	"right": {"type": "dialogue", "speaker": "B", "text": "Went right", "next": "the_end"},
	"rest": {"type": "pause", "next": "after_pause"},
	"after_pause": {"type": "dialogue", "speaker": "B", "text": "Back again", "next": "park"},
	"park": {"type": "background", "background": BG2, "next": "park_line"},
	"park_line": {"type": "dialogue", "speaker": "B", "text": "At the park", "next": "the_end"},
	"the_end": {"type": "end_game"},
}

var sm


func before_all():
	SaveSandbox.protect()


func after_all():
	SaveSandbox.restore()


func before_each():
	SaveSandbox.clear()
	sm = _new_manager()
	watch_signals(sm)


func after_each():
	InputManager.input_blocked = false


func _new_manager():
	var m = partial_double(StoryManagerScript).new()
	stub(m, "end_game").to_do_nothing()
	m.story_data = FAKE_STORY.duplicate(true)
	autofree(m)
	return m


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


func test_start_story_forgets_the_last_playthrough():
	# StoryManager is an autoload, so old state would leak into a New Game.
	sm.start_story("bg")
	sm.play_next_node()
	sm.play_next_node()  # reaches the choice
	sm.start_story("line1")
	assert_eq(sm.last_choice, {}, "Last choice should reset on a new story")
	assert_eq(sm.current_background, "")
	assert_eq(sm.current_characters, [])


# --- Clicking through dialogue -----------------------------------------------

func test_click_advances_to_next_node():
	sm.play_node("line1")
	sm.play_next_node()
	assert_eq(sm.current_node_id, "line2")
	assert_signal_emitted_with_parameters(sm, "dialogue_requested", ["", "Narration"])


func test_current_and_previous_node_are_tracked_after_each_step():
	# R2: current node (and the one before it, used to tell endings apart).
	sm.start_story("bg")
	var seen := [sm.current_node_id]
	sm.play_next_node()
	seen.append(sm.current_node_id)
	sm.play_next_node()
	seen.append(sm.current_node_id)
	sm.choice_selected("left")
	seen.append(sm.current_node_id)
	assert_eq(seen, ["line1", "line2", "ask", "left"])
	assert_eq(sm.previous_node_id, "ask")


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


# --- What's on screen (needed to rebuild a save) ------------------------------

func test_tracks_background_and_characters_on_screen():
	sm.start_story("bg")
	assert_eq(sm.current_background, BG)
	assert_eq(sm.current_characters, [{"path": CHAR, "position": Vector2(10, 20)}])


func test_new_background_clears_tracked_characters():
	# Must match world.gd, which removes characters when the background changes.
	sm.start_story("bg")
	sm.play_node("park")
	assert_eq(sm.current_background, BG2)
	assert_eq(sm.current_characters, [], "Characters from the last scene should be forgotten")


# --- Autosave (R6) -----------------------------------------------------------

func test_autosaves_at_each_dialogue_with_the_screen():
	sm.start_story("bg")
	var save = SaveManager.load_game()
	assert_eq(save.get("node_id"), "line1")
	assert_eq(save.get("background"), BG)
	assert_eq(save.get("characters"), [{"path": CHAR, "position": Vector2(10, 20)}])

	sm.play_next_node()
	assert_eq(SaveManager.load_game().get("node_id"), "line2", "Save should follow every click")


func test_autosaves_at_choices_and_pauses():
	sm.play_node("ask")
	assert_eq(SaveManager.load_game().get("node_id"), "ask")
	sm.play_node("rest")
	assert_eq(SaveManager.load_game().get("node_id"), "rest")


func test_does_not_save_on_background_or_character_nodes():
	# Those move on immediately, so the save lands on the dialogue after them.
	sm.play_node("park")
	assert_eq(SaveManager.load_game().get("node_id"), "park_line")


func test_choice_records_a_last_choice_snapshot():
	sm.start_story("bg")
	sm.play_next_node()
	sm.play_next_node()  # at the choice
	assert_eq(sm.last_choice.get("node_id"), "ask")
	assert_eq(sm.last_choice.get("background"), BG)
	assert_eq(sm.last_choice.get("characters"), [{"path": CHAR, "position": Vector2(10, 20)}])
	assert_eq(SaveManager.load_game().get("last_choice", {}).get("node_id"), "ask",
		"The save should carry the last choice so Retry works after quitting")


func test_last_choice_snapshot_is_not_changed_by_later_characters():
	sm.start_story("bg")
	sm.play_node("ask")
	var before = sm.last_choice.characters.duplicate(true)
	sm.play_node("char")  # adds another character after the choice
	assert_eq(sm.last_choice.characters, before)


# --- Story Map progress (R11) ----------------------------------------------------

func test_reaching_a_choice_marks_it_seen_on_the_map():
	sm.play_node("ask")
	assert_true(SaveManager.has_seen_group("Left or Right"))


func test_picking_an_option_records_it_for_the_map():
	sm.play_node("ask")
	sm.choice_selected("right")
	assert_true(SaveManager.has_picked_option("Left or Right", "Right"))
	assert_false(SaveManager.has_picked_option("Left or Right", "Left"))


# --- Continue from a save (R6) ------------------------------------------------

func test_continue_restores_the_exact_node_and_screen():
	sm.start_story("bg")
	sm.play_next_node()  # line2
	var save = SaveManager.load_game()

	# "Relaunch": a brand new StoryManager picks up from the save.
	var fresh = _new_manager()
	watch_signals(fresh)
	fresh.continue_story(save)
	assert_eq(fresh.current_node_id, "line2")
	assert_signal_emitted_with_parameters(fresh, "background_request", [BG])
	assert_signal_emitted_with_parameters(fresh, "character_request", [CHAR, Vector2(10, 20)])
	assert_signal_emitted_with_parameters(fresh, "dialogue_requested", ["", "Narration"])


func test_continue_skips_art_that_no_longer_exists():
	var save = {
		"node_id": "line1",
		"background": "res://Assets/Backgrounds/Deleted.jpg",
		"characters": [
			{"path": "res://Assets/Characters/deleted.png", "position": Vector2(1, 1)},
			{"path": CHAR, "position": Vector2(5, 5)},
		],
	}
	sm.continue_story(save)
	assert_signal_emitted_with_parameters(sm, "background_request", [""])
	assert_signal_emit_count(sm, "character_request", 1)
	assert_eq(sm.current_node_id, "line1")


func test_continue_keeps_the_saved_last_choice():
	var save = {"node_id": "line1", "background": BG, "characters": [],
		"last_choice": {"node_id": "ask", "background": BG, "characters": []}}
	sm.continue_story(save)
	assert_eq(sm.last_choice.get("node_id"), "ask")


# --- Endings -----------------------------------------------------------------

func test_reaching_an_end_node_calls_end_game():
	sm.play_node("right")
	sm.play_next_node()
	assert_eq(sm.current_node_id, "the_end")
	assert_eq(sm.previous_node_id, "right", "The line before end_game identifies the ending")
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
