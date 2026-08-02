extends StateCamera
class_name cameraTelephone

func _ready() -> void:
	CameraSignal.connect("changeToFree", changeToFree)

func Enter():
	CameraSignal.currentState = "Telephone"
	changeCamera(TelCam)

func changeToFree():
	Transitioned.emit(self, "cameraFree")
