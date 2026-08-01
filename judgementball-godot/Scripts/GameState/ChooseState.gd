extends GameState
class_name ChooseState

func _process(delta: float) -> void:
	if active:
		if Input.is_action_pressed("interact"):
			print("kill")
			
		elif Input.is_action_pressed("rightClick"):
			print("spare")
			
		if Input.is_action_pressed("testInput"):
			Transitioned.emit(self, "WalkState")
