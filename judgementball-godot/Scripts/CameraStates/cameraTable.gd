extends StateCamera
class_name cameraTable

func Enter():
	CameraSignal.currentState = "Table"
	changeCamera(TableCam)

func _process(delta: float) -> void:
	if Input.is_action_just_pressed("backwards"):
		Transitioned.emit(self, "cameraFree")
		
