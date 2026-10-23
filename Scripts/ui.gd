extends CanvasLayer

@onready var text_box = $Panel/MarginContainer/RichTextLabel
@onready var choice_buttons = $Panel/MarginContainer/HBoxContainer
@onready var name_plate = $Panel/NamePlate
@onready var name_label = $Panel/NamePlate/NameLabel

func _ready():
	StoryManager.dialogue_requested.connect(update_dialogue)
	StoryManager.choices_requested.connect(update_choice)
	StoryManager.pause_request.connect(pause)

func update_dialogue(speaker, text):
	$Panel.show()
	text_box.show()
	name_plate.show()
	choice_buttons.hide()
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

func pause():
	$Panel.hide()
