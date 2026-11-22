extends CanvasLayer

@onready var text_box = $Panel/MarginContainer/RichTextLabel
@onready var choice_buttons = $Panel/MarginContainer/HBoxContainer
@onready var name_plate = $Panel/NamePlate
@onready var name_label = $Panel/NamePlate/NameLabel

# The QTE prompt: a big button with a bar under it that empties as time runs out.
# Built in code so Main.tscn doesn't need new nodes.
var qte_box
var qte_button
var qte_bar

const QTE_BAR_COLOR = Color(0.8784314, 0.6901961, 0.3764706)  # the menu's gold
const QTE_BAR_LOW_COLOR = Color(0.85, 0.25, 0.2)               # last stretch of time

func _ready():
	StoryManager.dialogue_requested.connect(update_dialogue)
	StoryManager.choices_requested.connect(update_choice)
	StoryManager.pause_request.connect(pause)
	StoryManager.qte_requested.connect(show_qte)
	StoryManager.qte_finished.connect(hide_qte)
	build_qte()

func build_qte():
	qte_box = VBoxContainer.new()
	qte_box.add_theme_constant_override("separation", 6)
	qte_box.hide()

	qte_button = Button.new()
	qte_button.size_flags_vertical = Control.SIZE_EXPAND_FILL
	qte_button.add_theme_font_size_override("font_size", 36)
	qte_button.pressed.connect(StoryManager.qte_hit)
	qte_box.add_child(qte_button)

	qte_bar = ProgressBar.new()
	qte_bar.show_percentage = false
	qte_bar.custom_minimum_size = Vector2(0, 10)
	qte_bar.max_value = 1.0
	qte_bar.step = 0.0
	var fill = StyleBoxFlat.new()
	fill.bg_color = QTE_BAR_COLOR
	qte_bar.add_theme_stylebox_override("fill", fill)
	var back = StyleBoxFlat.new()
	back.bg_color = Color(0, 0, 0, 0.35)
	qte_bar.add_theme_stylebox_override("background", back)
	qte_box.add_child(qte_bar)

	$Panel/MarginContainer.add_child(qte_box)

func _process(_delta):
	if qte_box.visible and StoryManager.is_qte_active() and StoryManager.qte_total_time > 0.0:
		var left = clamp(StoryManager.qte_time_left / StoryManager.qte_total_time, 0.0, 1.0)
		qte_bar.value = left
		var fill = qte_bar.get_theme_stylebox("fill") as StyleBoxFlat
		fill.bg_color = QTE_BAR_LOW_COLOR if left < 0.25 else QTE_BAR_COLOR

func update_dialogue(speaker, text):
	$Panel.show()
	text_box.show()
	name_plate.show()
	choice_buttons.hide()
	qte_box.hide()
	if speaker != "":
		name_plate.show()
		name_label.text = speaker
		name_plate.reset_size()
	else:
		name_plate.hide()
	text_box.text = text

func update_choice(choices):
	$Panel.show()
	text_box.hide()
	name_plate.hide()
	qte_box.hide()
	choice_buttons.show()

	for child in choice_buttons.get_children():
		child.queue_free()

	for i in choices.size():
		var choice = choices[i]

		if i > 0:
			var divider = VSeparator.new()
			choice_buttons.add_child(divider)

		var button = Button.new()
		button.text = choice["text"]
		button.size_flags_horizontal = Control.SIZE_EXPAND_FILL
		choice_buttons.add_child(button)
		button.pressed.connect(StoryManager.choice_selected.bind(choice["next"]))

func show_qte(prompt, _seconds):
	$Panel.show()
	text_box.hide()
	name_plate.hide()
	choice_buttons.hide()
	qte_button.text = prompt + "!"
	qte_bar.value = 1.0
	qte_box.show()
	# Focused, so Space or Enter hits it as well as a click.
	qte_button.grab_focus()

func hide_qte(_hit):
	qte_box.hide()

func pause():
	$Panel.hide()
