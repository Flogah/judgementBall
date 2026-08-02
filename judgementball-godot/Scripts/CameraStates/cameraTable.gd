extends StateCamera
class_name cameraTable

func _ready() -> void:
	Global.connect("finishChoose", changeFree)

func Enter():
	CameraSignal.currentState = "Table"
	changeCamera(TableCam)

func _process(delta: float) -> void:
	if Input.is_action_just_pressed("backwards") && CameraSignal.currentState == "Table":
		Global.setFlipperActive.emit()
		Transitioned.emit(self, "cameraFree")

func changeFree():
	Transitioned.emit(self, "cameraFree")
