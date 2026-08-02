extends Interactable

func interact():
	if Global.gameState == "Walk":
		CameraSignal.changeToFlipper.emit()
	elif Global.gameState == "Choose":
		CameraSignal.changeToTable.emit()
