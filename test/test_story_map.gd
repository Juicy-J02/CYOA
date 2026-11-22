# StoryMap.build and the map screen (R11: "Map shows exactly the finished paths and
# survives save/load"). Saving is sandboxed, so your own progress isn't touched.
extends GutTest

const SaveSandbox = preload("res://test/save_sandbox.gd")
const H = preload("res://test/story_helpers.gd")
const MapScene = preload("res://Scenes/MapScreen.tscn")

# A small story with a question hub, two copies of one choice and two endings.
const FAKE := {
	"start": {"type": "dialogue", "speaker": "", "text": "Hi", "next": "hub"},
	"hub": {"type": "choice", "choices": [
		{"text": "Ask", "next": "answer"},
		{"text": "Go", "next": "fork"},
	]},
	"answer": {"type": "dialogue", "speaker": "", "text": "An answer", "next": "hub"},
	"fork": {"type": "choice", "choices": [
		{"text": "Left", "next": "left_line"},
		{"text": "Right", "next": "right_line"},
	]},
	"left_line": {"type": "dialogue", "speaker": "", "text": "L", "next": "pick_a"},
	"right_line": {"type": "dialogue", "speaker": "", "text": "R", "next": "pick_b"},
	"pick_a": {"type": "choice", "map": "Ex or Friends", "choices": [
		{"text": "Ex", "next": "end_ex"},
		{"text": "Friends", "next": "end_friends"},
	]},
	"pick_b": {"type": "choice", "map": "Ex or Friends", "choices": [
		{"text": "Ex", "next": "end_ex"},
		{"text": "Friends", "next": "end_friends"},
	]},
	"end_ex": {"type": "dialogue", "speaker": "", "text": "Ex ending", "ending": "Back Together", "next": "the_end"},
	"end_friends": {"type": "dialogue", "speaker": "", "text": "Friends ending", "next": "the_end"},
	"unreachable": {"type": "choice", "choices": [{"text": "?", "next": "the_end"}]},
	"the_end": {"type": "end_game"},
}


func before_all():
	SaveSandbox.protect()


func after_all():
	SaveSandbox.restore()


func before_each():
	SaveSandbox.clear()


# --- Names -----------------------------------------------------------------------

func test_group_key_uses_the_map_tag_or_the_id():
	assert_eq(StoryMap.group_key("pick_a", FAKE["pick_a"]), "Ex or Friends")
	assert_eq(StoryMap.group_key("fork", FAKE["fork"]), "fork")


func test_titles_come_from_tags_or_the_id():
	assert_eq(StoryMap.group_title("sneak_out", {}), "Sneak Out")
	assert_eq(StoryMap.ending_title("end_ex", FAKE["end_ex"]), "Back Together")
	assert_eq(StoryMap.ending_title("end_friends", FAKE["end_friends"]), "End Friends")


# --- follow() ------------------------------------------------------------------

func test_follow_finds_the_next_choice():
	assert_eq(StoryMap.follow(FAKE, "start"), {"kind": "group", "id": "hub"})


func test_follow_finds_an_ending_by_the_line_before_it():
	assert_eq(StoryMap.follow(FAKE, "end_ex"), {"kind": "ending", "id": "end_ex"})


func test_follow_returns_empty_for_a_broken_link():
	assert_eq(StoryMap.follow({"a": {"type": "dialogue", "next": "missing"}}, "a"), {})


func test_follow_returns_empty_for_a_loop_with_no_choice():
	var looped := {
		"a": {"type": "dialogue", "next": "b"},
		"b": {"type": "dialogue", "next": "a"},
	}
	assert_eq(StoryMap.follow(looped, "a"), {})


# --- build() on the fake story -------------------------------------------------------

func test_build_finds_choices_in_story_order():
	var map = StoryMap.build(FAKE, "start")
	assert_eq(map.order, ["hub", "fork", "Ex or Friends"])


func test_build_merges_copies_of_a_choice():
	var map = StoryMap.build(FAKE, "start")
	var texts = map.groups["Ex or Friends"].options.map(func(o): return o.text)
	assert_eq(texts, ["Ex", "Friends"], "Two copies should show as one choice with two options")


func test_build_finds_both_endings_with_titles():
	var map = StoryMap.build(FAKE, "start")
	assert_eq(map.endings.size(), 2)
	assert_eq(map.endings["end_ex"].title, "Back Together")


func test_build_skips_unreachable_choices():
	var map = StoryMap.build(FAKE, "start")
	assert_false(map.groups.has("unreachable"), "Cut content shouldn't count toward the map's totals")


func test_question_that_loops_back_points_at_its_own_choice():
	var map = StoryMap.build(FAKE, "start")
	var ask = map.groups["hub"].options[0]
	assert_eq(ask.targets, [{"kind": "group", "id": "hub"}])


func test_qte_shows_on_the_map_with_its_prompt_and_miss():
	var story := {
		"a": {"type": "dialogue", "speaker": "", "text": "Go", "next": "q"},
		"q": {"type": "qte", "map": "Fight: Shoot", "prompt": "SHOOT", "next": "win", "fail": "lose"},
		"win": {"type": "dialogue", "speaker": "", "text": "Hit", "ending": "Won", "next": "the_end"},
		"lose": {"type": "dialogue", "speaker": "", "text": "Missed", "ending": "Lost", "next": "the_end"},
		"the_end": {"type": "end_game"},
	}
	var map = StoryMap.build(story, "a")
	assert_eq(map.order, ["Fight: Shoot"])
	var texts = map.groups["Fight: Shoot"].options.map(func(o): return o.text)
	assert_eq(texts, ["SHOOT", "Miss"])
	assert_eq(map.endings.size(), 2)


# --- build() on the REAL story -------------------------------------------------------

func test_real_map_has_every_reachable_choice_and_qte():
	var nodes := H.all_nodes()
	var map = StoryMap.build(nodes, H.START_ID)
	var reachable := H.reachable_from(H.START_ID, nodes)
	var problems := []
	for id in reachable:
		if H.is_decision(nodes[id]):
			var key = StoryMap.group_key(id, nodes[id])
			if not map.groups.has(key):
				problems.append("choice %s (map group '%s') is missing from the map" % [id, key])
	assert_true(problems.is_empty(), H.report(problems))


func test_real_map_has_every_reachable_ending():
	var nodes := H.all_nodes()
	var map = StoryMap.build(nodes, H.START_ID)
	var reachable := H.reachable_from(H.START_ID, nodes)
	var expected := H.ending_lines(nodes).filter(func(id): return reachable.has(id))
	expected.sort()
	var got: Array = map.endings.keys()
	got.sort()
	assert_eq(got, expected)


func test_every_option_on_the_real_map_leads_somewhere():
	# An option with no target would be a "???" that can never be filled in.
	var map = StoryMap.build(H.all_nodes(), H.START_ID)
	var problems := []
	for key in map.groups:
		for option in map.groups[key].options:
			if option.targets.is_empty():
				problems.append("'%s' > \"%s\" leads nowhere (broken link or endless loop)" % [key, option.text])
	assert_true(problems.is_empty(), H.report(problems))


# --- Map screen -----------------------------------------------------------------------

func _open_map():
	var screen = add_child_autofree(MapScene.instantiate())
	await wait_process_frames(2)
	return screen


func test_empty_map_shows_the_hint_and_zero_counts():
	var screen = await _open_map()
	assert_not_null(screen.empty_hint, "A new player should see 'Your map fills in as you play.'")
	assert_string_contains(screen.count_label.text, "Choices explored: 0 of")
	assert_string_contains(screen.count_label.text, "Endings found: 0 of")


func test_map_shows_progress_after_a_relaunch():
	# Play a little (recorded to progress.cfg), "relaunch", then open the map.
	var nodes := H.all_nodes()
	var map = StoryMap.build(nodes, H.START_ID)
	var first_key: String = map.start.id
	var first_option: String = map.groups[first_key].options[0].text
	SaveManager.mark_group_seen(first_key)
	SaveManager.record_option(first_key, first_option)
	SaveSandbox.reset_memory()
	SaveManager.load_progress()

	var screen = await _open_map()
	assert_null(screen.empty_hint)
	assert_true(screen.cards.has("g:" + first_key), "The first choice should be on the map")
	assert_string_contains(screen.count_label.text, "Choices explored: 1 of")


func test_options_not_picked_yet_stay_hidden():
	var map = StoryMap.build(H.all_nodes(), H.START_ID)
	var first_key: String = map.start.id
	SaveManager.mark_group_seen(first_key)
	var screen = await _open_map()
	var rows: Array = screen.option_rows.get("g:" + first_key, [])
	assert_gt(rows.size(), 0)
	for row in rows:
		assert_eq(row.text, "???", "Unpicked options must not spoil where they lead")
