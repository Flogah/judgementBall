extends Label


func _ready() -> void:
	Global.connect("changeScore", changeScore)


func changeScore(addScore: float):
	Global.score += addScore
	Global.clueScore += addScore
	text = ("Score: " + str(Global.score))
	if Global.clueScore >= 50:
		Global.clueScore -= 50
		Global.updateClues.emit()
