extends State
class_name ChooseState

func _input(event: InputEvent) -> void:
	if event.is_action_pressed("leftClick"):
		print("kill")
		
	elif event.is_action_pressed("rightClick"):
		print("spare")

	if event.is_action_pressed("testInput"):
		Transitioned.emit(self, "WalkState")
