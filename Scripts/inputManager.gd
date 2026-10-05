extends Node

signal left_click_sig

var input_blocked

func _input(event):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		if event.is_pressed():
			left_click_sig.emit()
