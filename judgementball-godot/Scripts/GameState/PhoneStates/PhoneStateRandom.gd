class_name PhoneStateRandom
extends State

func Enter():
	Global.phoneState = "Random"

func Exit():
	Transitioned.emit(self, "ChooseState")
