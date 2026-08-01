extends State
class_name WalkState

func _input(event: InputEvent) -> void:
	if event.is_action_pressed("testInput"):
		Transitioned.emit(self, "chooseState")
