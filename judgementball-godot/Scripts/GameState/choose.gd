extends Control

func _process(delta: float) -> void:
	if visible:
		Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)


func _on_buttons_button_up() -> void:
	print("schuldig")
	Global.finishChoose.emit()
	Global.clues = 0


func _on_buttonu_button_up() -> void:
	print("unschuldig")
	Global.finishChoose.emit()
	Global.clues = 0
