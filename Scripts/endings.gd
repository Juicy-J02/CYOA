extends Control

const LOCKED = "————————"

@onready var count_label = $CenterContainer/VBoxContainer/CountLabel
@onready var choice_list = $CenterContainer/VBoxContainer/Scroll/Columns/ChoiceList
@onready var ending_list = $CenterContainer/VBoxContainer/Scroll/Columns/EndingColumn/EndingList

func _ready():
	var options_total = 0
	var options_found = 0
	var endings_total = 0
	var endings_found = 0

	# Story entries keep the order they're written in, so choices appear in story order.
	# Everything is counted from the story data, so new choices and endings show up automatically.
	for node_id in StoryData.story_data:
		var node_data = StoryData.story_data[node_id]

		if node_data.type == "choice":
			# "sneak_out" becomes "Sneak Out", but only once the player has reached it.
			add_heading(choice_list, node_id.capitalize(), SaveManager.has_visited(node_id))

			for i in node_data.choices.size():
				var option = node_data.choices[i]
				options_total += 1
				var found = SaveManager.has_choice(node_id, option.next)
				if found:
					options_found += 1
				add_entry(choice_list, i + 1, option.text, found)

		# An ending is any line whose "next" leads into an end_game entry.
		if leads_to_end(node_data):
			endings_total += 1
			var found = SaveManager.has_ending(node_id)
			if found:
				endings_found += 1
			var title = SaveManager.get_ending_title(node_id)
			if title == "":
				title = node_id.capitalize()
			add_entry(ending_list, endings_total, title, found)

	count_label.text = "Choices explored: %d of %d     Endings found: %d of %d" % [options_found, options_total, endings_found, endings_total]

func leads_to_end(node_data):
	var next_id = node_data.get("next", "")
	return StoryData.story_data.has(next_id) and StoryData.story_data[next_id].type == "end_game"

func add_heading(list, text, found):
	var label = Label.new()
	label.theme_type_variation = "NameLabel"
	# "Choice:" always shows, so the list still reads as choices while everything is locked.
	if found:
		label.text = "Choice: " + text
	else:
		label.text = "Choice: " + LOCKED
		label.modulate = Color(1, 1, 1, 0.45)
	list.add_child(label)

func add_entry(list, number, text, found):
	var label = Label.new()
	label.theme_type_variation = "ProgressEntry"
	if found:
		label.text = "%d.  %s" % [number, text]
	else:
		label.text = "%d.  %s" % [number, LOCKED]
		# Dim the locked entries so the found ones stand out.
		label.modulate = Color(1, 1, 1, 0.45)
	list.add_child(label)

func _on_back_button_pressed():
	get_tree().change_scene_to_file("res://Scenes/StartScreen.tscn")
