extends Control

# StartScreen.tscn shows one of the layouts in Scenes/StartScreens/. Pick which one with the
# Layout setting in the Inspector (select the StartScreen node in StartScreen.tscn).
# Everything else in the game opens StartScreen.tscn, so switching layouts changes nothing else.
#
# While testing (debug builds, including running from the editor), F2 cycles through the
# layouts live so they can be compared. Exported release builds always use the Layout setting.

const LAYOUTS = {
	"Stack": "res://Scenes/StartScreens/Stack.tscn",  # A: title, statue, four stacked buttons
	"Split": "res://Scenes/StartScreens/Split.tscn",  # C: statue left, text menu right
	"Art": "res://Scenes/StartScreens/Art.tscn",      # D: big statue, buttons along the bottom
}

@export_enum("Stack", "Split", "Art") var layout: String = "Split"

# The layout F2 last switched to, so it survives going into the story and back while testing.
static var testing_layout = ""

var screen = null  # the layout currently shown
var label = null

func _ready():
	if OS.is_debug_build() and testing_layout != "":
		layout = testing_layout
	show_layout()

func show_layout():
	if screen:
		screen.queue_free()
	screen = load(LAYOUTS[layout]).instantiate()
	add_child(screen)
	if OS.is_debug_build():
		show_testing_label()

func show_testing_label():
	if label == null:
		label = Label.new()
		label.modulate = Color(1, 1, 1, 0.45)
		label.add_theme_font_size_override("font_size", 16)
		label.position = Vector2(14, 690)
	else:
		remove_child(label)
	add_child(label)  # keep it on top of the new layout
	label.text = "Layout: %s  (F2 to switch, testing only)" % layout

func _unhandled_input(event):
	if OS.is_debug_build() and event is InputEventKey and event.pressed and not event.echo and event.keycode == KEY_F2:
		var names = LAYOUTS.keys()
		layout = names[(names.find(layout) + 1) % names.size()]
		testing_layout = layout
		show_layout()
		get_viewport().set_input_as_handled()
