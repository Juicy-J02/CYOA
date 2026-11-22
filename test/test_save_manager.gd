# SaveManager: the save file and Story Map progress (R6, R11).
# "Passes when: save, quit, relaunch and load restores the exact node and progress;
# a bad save file never crashes the game." Sandboxed, so your own save isn't touched.
extends GutTest

const SaveSandbox = preload("res://test/save_sandbox.gd")

const CHARS := [{"path": "res://Assets/Characters/narrator.png", "position": Vector2(300, 200)}]
const LAST := {"node_id": "sneak_out", "background": "res://Assets/Backgrounds/Bedroom.jpg", "characters": []}


func before_all():
	SaveSandbox.protect()


func after_all():
	SaveSandbox.restore()


func before_each():
	SaveSandbox.clear()


func _write_raw_save(text: String) -> void:
	var f := FileAccess.open(SaveManager.SAVE_PATH, FileAccess.WRITE)
	f.store_string(text)
	f.close()


func _write_raw_progress(text: String) -> void:
	var f := FileAccess.open(SaveManager.PROGRESS_PATH, FileAccess.WRITE)
	f.store_string(text)
	f.close()


# --- Save file ---------------------------------------------------------------

func test_no_save_at_first():
	assert_false(SaveManager.has_save())
	assert_eq(SaveManager.load_game(), {})


func test_save_then_load_gives_back_everything():
	SaveManager.save_game("zach_act1_scene1_1", "res://Assets/Backgrounds/Park.jpg", CHARS, LAST)
	assert_true(SaveManager.has_save())
	var state = SaveManager.load_game()
	assert_eq(state.node_id, "zach_act1_scene1_1")
	assert_eq(state.background, "res://Assets/Backgrounds/Park.jpg")
	assert_eq(state.characters, CHARS, "Character positions should come back as Vector2")
	assert_eq(state.last_choice.node_id, "sneak_out")
	assert_false(state.checkpoint)


func test_checkpoint_flag_survives_a_reload():
	SaveManager.save_game("sneak_out", "", [], {}, true)
	assert_true(SaveManager.load_game().checkpoint)


func test_new_save_replaces_the_old_one():
	SaveManager.save_game("first", "", [], {})
	SaveManager.save_game("second", "", [], {})
	assert_eq(SaveManager.load_game().node_id, "second")


func test_delete_save_removes_it():
	SaveManager.save_game("x", "", [], {})
	SaveManager.delete_save()
	assert_false(SaveManager.has_save())
	assert_eq(SaveManager.load_game(), {})


func test_delete_save_with_no_save_is_safe():
	SaveManager.delete_save()
	assert_false(SaveManager.has_save())


# --- Damaged save files never crash (R6) ---------------------------------------

func test_garbage_save_file_loads_as_no_save():
	_write_raw_save("this is not a save file {{{ ]]] =")
	assert_eq(SaveManager.load_game(), {})
	# Godot logs the parse error; that's expected, the point is that nothing crashes.
	assert_engine_error("ConfigFile parse error")


func test_empty_save_file_loads_as_no_save():
	_write_raw_save("")
	assert_eq(SaveManager.load_game(), {})


func test_save_without_a_story_position_loads_as_no_save():
	_write_raw_save("[save]\nbackground=\"res://Assets/Backgrounds/Park.jpg\"\n")
	assert_eq(SaveManager.load_game(), {})


func test_save_with_wrong_types_keeps_what_it_can():
	_write_raw_save("[save]\nnode_id=\"line1\"\nbackground=42\ncharacters=[{\"path\": 5}, {\"path\": \"res://Assets/Characters/narrator.png\", \"position\": Vector2(1, 2)}, \"junk\"]\nlast_choice=\"oops\"\ncheckpoint=\"yes\"\n")
	var state = SaveManager.load_game()
	assert_eq(state.node_id, "line1")
	assert_eq(state.background, "", "A non-text background should be dropped")
	assert_eq(state.characters, [{"path": "res://Assets/Characters/narrator.png", "position": Vector2(1, 2)}],
		"Broken character entries should be skipped, good ones kept")
	assert_eq(state.last_choice, {})
	assert_false(state.checkpoint)


# --- Story Map progress --------------------------------------------------------

func test_progress_survives_a_relaunch():
	SaveManager.mark_group_seen("Ex or Friends")
	SaveManager.record_option("Ex or Friends", "Friends")
	SaveManager.record_ending("zach_act1_scene1_7")
	# "Relaunch": wipe memory and read the file back.
	SaveSandbox.reset_memory()
	SaveManager.load_progress()
	assert_true(SaveManager.has_seen_group("Ex or Friends"))
	assert_true(SaveManager.has_picked_option("Ex or Friends", "Friends"))
	assert_false(SaveManager.has_picked_option("Ex or Friends", "Ex"))
	assert_true(SaveManager.has_found_ending("zach_act1_scene1_7"))


func test_new_game_does_not_clear_progress():
	SaveManager.record_ending("some_ending")
	SaveManager.save_game("x", "", [], {})
	SaveManager.delete_save()  # what New Game does
	SaveSandbox.reset_memory()
	SaveManager.load_progress()
	assert_true(SaveManager.has_found_ending("some_ending"))


func test_garbage_progress_file_loads_as_empty():
	_write_raw_progress("not a config file ]]] {{{")
	SaveManager.load_progress()
	assert_eq(SaveManager.groups_seen, {})
	assert_eq(SaveManager.endings_found, {})


func test_progress_with_wrong_types_skips_bad_entries():
	_write_raw_progress("[progress]\ngroups=[\"Good\", 7, null]\noptions=\"not a list\"\nendings=[\"end_a\"]\n")
	SaveManager.load_progress()
	assert_eq(SaveManager.groups_seen.keys(), ["Good"])
	assert_eq(SaveManager.options_picked, {})
	assert_true(SaveManager.has_found_ending("end_a"))


func test_delete_progress_resets_everything():
	SaveManager.record_ending("e")
	SaveManager.delete_progress()
	assert_false(SaveManager.has_found_ending("e"))
	assert_false(FileAccess.file_exists(SaveManager.PROGRESS_PATH))
