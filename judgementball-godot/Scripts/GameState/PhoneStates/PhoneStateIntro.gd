class_name PhoneStateIntro

extends State

func Enter():
	Global.phoneState = "Random"

func Exit():
	Transitioned.emit(self, "PhoneStateIntro")
