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
# Solid rather than see-through, so overlapping lines don't get brighter where they cross.
const HIDDEN_LINE = Color(0.17, 0.24, 0.30)
const FOUND_WIDTH = 3.0
const HIDDEN_WIDTH = 2.0
const DIM = Color(1, 1, 1, 0.42)

@onready var count_label = $Margin/VBox/Header/CountLabel
@onready var scroll = $Margin/VBox/Scroll
@onready var canvas = $Margin/VBox/Scroll/Canvas

var map = {}
var cards = {}         # card id ("start", "g:<group>", "e:<ending>") -> card Control
var option_rows = {}   # card id -> [option label, ...] in option order
var children = {}      # card id -> [[option index, target card id, picked], ...]
var loops = {}         # "card id>option index" -> true for options that come back to their own choice
var bar_x = {}         # card id -> x of the upright its lines branch from, halfway into the gap

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
# story always reads left to right. Rows: a card stays level with the card before it when the
# incoming line can enter it straight, and later branches stack below.
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

	for id in cards:
		var column = depth.get(id, 0)
		bar_x[id] = column_x[column] + column_width[column] + COLUMN_GAP / 2.0

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
		if cards.has(pair[1]):
			# Keep the next card level with this one, unless the line would miss its side;
			# then lower it just enough for the line to go straight in.
			var line_y = y + exit_offset(id, pair[0])
			var target = cards[pair[1]]
			var pad = entry_pad(target)
			var level = clamp(y, line_y - target.size.y + pad, line_y - pad)
			place_rows(pair[1], level, depth, column_x, column_bottom, placed)

# How far down a card its line leaves: level with the option, or the middle of a pill card.
func exit_offset(id, option_index):
	if option_index < 0:
		return cards[id].size.y / 2
	var row = option_rows[id][option_index]
	return row.global_position.y - cards[id].global_position.y + row.size.y / 2

# Lines enter a card anywhere along its left side, but no closer than this to a corner.
# Endings are short pills, so their lines always enter in the middle.
func entry_pad(card):
	return min(22.0, card.size.y / 2)

# Where a line at height line_y enters a card: straight across if it can, otherwise at the
# nearest point on the card's side.
func entry_y(card, line_y):
	var pad = entry_pad(card)
	return clamp(line_y, card.position.y + pad, card.position.y + card.size.y - pad)

# Each line runs straight out of its option to an upright halfway into the gap, along the
# upright, then straight into the card it leads to. A choice's lines share one upright, so
# branches fan out like a goalpost, and options leading to the same place join on it.
# Hidden lines are drawn first so found ones sit on top where they overlap.
func draw_lines():
	# The canvas can draw once before layout() has run; there are no lines to draw yet.
	if bar_x.is_empty():
		return
	var hidden = []
	var found = []
	for id in children:
		# Options of one card that lead to the same place share an entry point, so their
		# lines join on the upright instead of entering side by side.
		var entries = {}
		for pair in children[id]:
			if not cards.has(pair[1]):
				continue
			var card = cards[id]
			var target = cards[pair[1]]
			var from = Vector2(card.position.x + card.size.x, card.position.y + exit_offset(id, pair[0]))
			if not entries.has(pair[1]):
				entries[pair[1]] = entry_y(target, from.y)
			var to = Vector2(target.position.x, entries[pair[1]])
			var path = [from, to] if is_equal_approx(from.y, to.y) else [from, Vector2(bar_x[id], from.y), Vector2(bar_x[id], to.y), to]
			(found if pair[2] else hidden).append(path)
	for path in hidden:
		draw_path(path, HIDDEN_LINE, HIDDEN_WIDTH)
	for path in found:
		draw_path(path, FOUND_LINE, FOUND_WIDTH)

func draw_path(points, color, width):
	for i in points.size() - 1:
		canvas.draw_line(points[i], points[i + 1], color, width)
	# Square off the corners so thick lines meet without a notch.
	for point in points.slice(1, points.size() - 1):
		canvas.draw_rect(Rect2(point - Vector2(width, width) / 2, Vector2(width, width)), color)

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
