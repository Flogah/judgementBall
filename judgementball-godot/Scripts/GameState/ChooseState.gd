extends GameState
class_name ChooseState

func _ready() -> void:
	Global.connect("finishChoose", switch)

func Enter() -> void:
	Global.gameState = "Choose"
	

func _process(delta: float) -> void:
	if active:
		print(8)

func switch():
	Global.setFlipperActive.emit()
	Transitioned.emit(self, "walkState")
