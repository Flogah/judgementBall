extends StateCamera
class_name cameraFlipper

func _ready() -> void:
	Global.connect("finishChoose", changeFree)
	CameraSignal.connect("changeToFree", changeFree)

func Enter():
	CameraSignal.currentState = "Flipper"
	changeCamera(FlipCam)
	
func _process(delta: float) -> void:
	if Input.is_action_just_pressed("backwards") && CameraSignal.currentState == "Flipper":
		Global.setFlipperActive.emit()
		Transitioned.emit(self, "cameraFree")

func changeFree():
	Transitioned.emit(self, "cameraFree")
