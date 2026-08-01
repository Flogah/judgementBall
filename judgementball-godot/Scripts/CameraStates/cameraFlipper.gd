extends StateCamera
class_name cameraFlipper

func Enter():
	CameraSignal.currentState = "Flipper"
	changeCamera(FlipCam)
	
func _process(delta: float) -> void:
	if Input.is_action_just_pressed("backwards"):
		Transitioned.emit(self, "cameraFree")
