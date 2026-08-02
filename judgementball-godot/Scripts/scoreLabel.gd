extends Label

var clueScore: float = 0


func _ready() -> void:
	Global.connect("changeScore", changeScore)


func changeScore(addScore: float):
	Global.score += addScore
	clueScore += addScore
	text = ("Score: " + str(Global.score))
	if clueScore >= 50:
		clueScore -= 50
		Global.updateClues.emit()
