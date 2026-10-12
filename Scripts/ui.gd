extends CanvasLayer

@onready var text_box = $Panel/MarginContainer/RichTextLabel
@onready var choice_buttons = $Panel/MarginContainer/HBoxContainer

func _ready():
	StoryManager.dialogue_requested.connect(update_dialogue)
	StoryManager.choices_requested.connect(update_choice)

func update_dialogue(speaker, text):
	text_box.show()
	choice_buttons.hide()
	text_box.text = "%s: %s" % [speaker, text]

func update_choice(choices):
	text_box.hide()
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
