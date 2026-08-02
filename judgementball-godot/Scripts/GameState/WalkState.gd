extends GameState
class_name WalkState

func _ready() -> void:
	Global.connect("killBall", switch)

func Enter():
	Global.gameState = "Walk"

func switch():
	Transitioned.emit(self, "ChooseState")
