extends Control

func _process(delta: float) -> void:
	if visible:
		Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)


func _on_buttons_button_up() -> void:
	print("schuldig")
	Global.finishChoose.emit()
	Global.clues = 0
	Global.hidePapers.emit()
	Global.changeScore.emit(-Global.score)
	if Global.currentCase < Global.cases.size()-1:
		Global.currentCase += 1


func _on_buttonu_button_up() -> void:
	print("unschuldig")
	Global.finishChoose.emit()
	Global.clues = 0
	Global.hidePapers.emit()
	Global.changeScore.emit(-Global.score)
	if Global.currentCase < Global.cases.size()-1:
		Global.currentCase += 1
