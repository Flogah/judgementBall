extends StateCamera
class_name cameraFree

func _ready() -> void:
	CameraSignal.connect("changeToFlipper", enterFlipper)
	CameraSignal.connect("changeToTable", enterTable)
	CameraSignal.connect("changeToTelephone", enterTelephone)

func Enter():
	freeCam.global_rotation = FreeCamRotation
	changeCamera(freeCam)

func enterFlipper():
	FreeCamRotation = freeCam.global_rotation
	Transitioned.emit(self, "cameraFlipper")
	
func enterTable():
	FreeCamRotation = freeCam.global_rotation
	Transitioned.emit(self, "cameraTable")

func enterTelephone():
	FreeCamRotation = freeCam.global_rotation
	Transitioned.emit(self, "cameraTelephone")
