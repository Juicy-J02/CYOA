extends Control

# Draws the story map as a tree, left to right: each choice is a card with its options
# listed under its title, lines run from each option to wherever it leads, and endings are
# the rounded cards at the tips. Anything the player hasn't found yet shows as "???".
# The structure comes from StoryMap.build, so new story content appears automatically.

const START_ID = "act1_scene1_background"
const LOCKED = "???"
const COLUMN_GAP = 90
const ROW_GAP = 22
const EDGE = 16  # space around the whole map

const FOUND_LINE = Color(0.75, 0.54, 0.26)
const HIDDEN_LINE = Color(0.93, 0.9, 0.83, 0.18)
const DIM = Color(1, 1, 1, 0.42)

@onready var count_label = $Margin/VBox/Header/CountLabel
@onready var scroll = $Margin/VBox/Scroll
@onready var canvas = $Margin/VBox/Scroll/Canvas

var map = {}
var cards = {}         # card id ("start", "g:<group>", "e:<ending>") -> card Control
var option_rows = {}   # card id -> [option label, ...] in option order
var children = {}      # card id -> [[option index, target card id, picked], ...]
var loops = {}         # "card id>option index" -> true for options that come back to their own choice

func _ready():
	map = StoryMap.build(StoryData.story_data, START_ID)
	build_cards()
	update_counts()
	canvas.draw.connect(draw_lines)
	canvas.gui_input.connect(on_canvas_input)
	# Containers size their contents a frame later, so lay out (and draw the lines) once
	# the cards and the scroll area have their real sizes.
	await get_tree().process_frame
	layout()
	canvas.queue_redraw()

func card_id(target):
	if target.is_empty():
		return ""
	return ("g:" if target.kind == "group" else "e:") + target.id

func build_cards():
	cards["start"] = make_ending_card("Start", true)
	children["start"] = [[-1, card_id(map.start), true]]

	for key in map.order:
		var id = "g:" + key
		var group = map.groups[key]
		var seen = SaveManager.has_seen_group(key)
		var card = PanelContainer.new()
		card.theme_type_variation = "MapCard"
		card.mouse_filter = Control.MOUSE_FILTER_IGNORE
		var box = VBoxContainer.new()
		box.add_theme_constant_override("separation", 6)
		card.add_child(box)
		var title = Label.new()
		title.theme_type_variation = "MapTitle"
		title.text = group.title if seen else LOCKED
		box.add_child(title)

		option_rows[id] = []
		children[id] = []
		for i in group.options.size():
			var option = group.options[i]
			var picked = SaveManager.has_picked_option(key, option.text)
			var row = Label.new()
			row.theme_type_variation = "MapOption"
			row.text = option.text if picked else LOCKED
			for target in option.targets:
				var target_id = card_id(target)
				if target_id == id:
					loops[id + ">" + str(i)] = true
					if picked:
						row.text += "  ↺"
				else:
					children[id].append([i, target_id, picked])
			if not picked:
				row.modulate = DIM
			box.add_child(row)
			option_rows[id].append(row)

		if not seen:
			card.modulate = DIM
		canvas.add_child(card)
		cards[id] = card

	for ending_id in map.endings:
		var found = SaveManager.has_found_ending(ending_id)
		var text = "★  " + (map.endings[ending_id].title if found else LOCKED)
		cards["e:" + ending_id] = make_ending_card(text, found)

func make_ending_card(text, found):
	var card = PanelContainer.new()
	card.theme_type_variation = "MapEnding"
	card.mouse_filter = Control.MOUSE_FILTER_IGNORE
	var label = Label.new()
	label.theme_type_variation = "MapTitle"
	label.text = text
	card.add_child(label)
	if not found:
		card.modulate = DIM
	canvas.add_child(card)
	return card

# Columns: each card sits one column right of the furthest card that leads to it, so the
# story always reads left to right. Rows: a card's first child lines up with it, and later
# children stack below, which keeps each branch together.
func layout():
	var depth = {}
	place_depth("start", 0, {}, depth)

	var column_width = {}
	for id in cards:
		cards[id].size = cards[id].get_combined_minimum_size()
		var column = depth.get(id, 0)
		column_width[column] = max(column_width.get(column, 0.0), cards[id].size.x)

	var column_x = {}
	var x = EDGE
	for column in range(column_width.size()):
		column_x[column] = x
		x += column_width.get(column, 0.0) + COLUMN_GAP

	var column_bottom = {}
	place_rows("start", EDGE, depth, column_x, column_bottom, {})

	var size_needed = Vector2.ZERO
	for id in cards:
		size_needed.x = max(size_needed.x, cards[id].position.x + cards[id].size.x)
		size_needed.y = max(size_needed.y, cards[id].position.y + cards[id].size.y)
	size_needed += Vector2(EDGE, EDGE)

	# A map shorter than the screen sits in the middle instead of along the top.
	var spare = scroll.size.y - size_needed.y
	if spare > 0:
		for id in cards:
			cards[id].position.y += spare / 2
		size_needed.y = scroll.size.y
	canvas.custom_minimum_size = size_needed

func place_depth(id, d, on_path, depth):
	if id == "" or on_path.has(id) or depth.get(id, -1) >= d:
		return
	depth[id] = d
	on_path[id] = true
	for pair in children.get(id, []):
		place_depth(pair[1], d + 1, on_path, depth)
	on_path.erase(id)

func place_rows(id, y, depth, column_x, column_bottom, placed):
	if id == "" or placed.has(id) or not cards.has(id):
		return
	placed[id] = true
	var column = depth.get(id, 0)
	var card = cards[id]
	y = max(y, column_bottom.get(column, float(EDGE)))
	card.position = Vector2(column_x[column], y)
	column_bottom[column] = y + card.size.y + ROW_GAP
	for pair in children.get(id, []):
		place_rows(pair[1], y, depth, column_x, column_bottom, placed)

func draw_lines():
	for id in children:
		for pair in children[id]:
			var target = cards.get(pair[1])
			if target == null:
				continue
			var from
			if pair[0] < 0:
				from = right_middle(cards[id])
			else:
				# The line starts at the card's edge, level with its option.
				from = right_middle(option_rows[id][pair[0]])
				from.x = cards[id].position.x + cards[id].size.x
			var found = pair[2]
			var to = local_rect(target).position + Vector2(0, min(24.0, target.size.y / 2))
			draw_curve(from, to, FOUND_LINE if found else HIDDEN_LINE, 3.0 if found else 2.0)

func local_rect(control):
	return Rect2(control.global_position - canvas.global_position, control.size)

func right_middle(control):
	var rect = local_rect(control)
	return rect.position + Vector2(rect.size.x, rect.size.y / 2)

func draw_curve(from, to, color, width):
	var bend = max(40.0, (to.x - from.x) / 2)
	var points = PackedVector2Array()
	for i in 25:
		var t = i / 24.0
		var a = from.lerp(from + Vector2(bend, 0), t)
		var b = (from + Vector2(bend, 0)).lerp(to - Vector2(bend, 0), t)
		var c = (to - Vector2(bend, 0)).lerp(to, t)
		points.append(a.lerp(b, t).lerp(b.lerp(c, t), t))
	canvas.draw_polyline(points, color, width, true)

func update_counts():
	var options_total = 0
	var options_found = 0
	for key in map.groups:
		for option in map.groups[key].options:
			options_total += 1
			if SaveManager.has_picked_option(key, option.text):
				options_found += 1
	var endings_found = 0
	for ending_id in map.endings:
		if SaveManager.has_found_ending(ending_id):
			endings_found += 1
	count_label.text = "Choices explored: %d of %d     Endings found: %d of %d" % [options_found, options_total, endings_found, map.endings.size()]

# Drag to pan. The mouse wheel scrolls sideways when the map isn't taller than the screen,
# since the story runs left to right.
func on_canvas_input(event):
	if event is InputEventMouseMotion and event.button_mask & MOUSE_BUTTON_MASK_LEFT:
		scroll.scroll_horizontal -= int(event.relative.x)
		scroll.scroll_vertical -= int(event.relative.y)
		canvas.accept_event()
	elif event is InputEventMouseButton and event.pressed and canvas.size.y <= scroll.size.y:
		if event.button_index == MOUSE_BUTTON_WHEEL_DOWN:
			scroll.scroll_horizontal += 80
			canvas.accept_event()
		elif event.button_index == MOUSE_BUTTON_WHEEL_UP:
			scroll.scroll_horizontal -= 80
			canvas.accept_event()

func _unhandled_input(event):
	if event is InputEventKey and event.pressed and not event.echo and event.keycode == KEY_ESCAPE:
		_on_back_button_pressed()

func _on_back_button_pressed():
	get_tree().change_scene_to_file("res://Scenes/StartScreen.tscn")
