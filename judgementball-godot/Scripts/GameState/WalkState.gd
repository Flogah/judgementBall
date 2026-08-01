extends GameState
class_name WalkState

func _process(delta: float) -> void:
	if active:
		if Input.is_action_pressed("testInput"):
			Transitioned.emit(self, "chooseState")
