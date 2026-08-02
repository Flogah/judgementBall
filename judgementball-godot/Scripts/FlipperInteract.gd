extends Interactable

func interact():
	CameraSignal.changeToFlipper.emit()
