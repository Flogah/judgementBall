extends StateCamera
class_name cameraTelephone

func Enter():
	changeCamera(TelCam)

func _process(delta: float) -> void:
	if Input.is_action_just_pressed("backwards"):
		Transitioned.emit(self, "cameraFree")
