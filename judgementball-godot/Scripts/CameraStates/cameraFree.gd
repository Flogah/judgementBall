extends StateCamera
class_name cameraFree

func _ready() -> void:
	CameraSignal.connect("changeToFlipper", enterFlipper)
	CameraSignal.connect("changeToTable", enterTable)
	CameraSignal.connect("changeToTelephone", enterTelephone)

func Enter():
	changeCamera(freeCam)

func enterFlipper():
	Transitioned.emit(self, "cameraFlipper")
	
func enterTable():
	Transitioned.emit(self, "cameraTable")

func enterTelephone():
	Transitioned.emit(self, "cameraTelephone")
