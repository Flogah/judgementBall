extends Control


func _ready() -> void:
	Global.connect("changeScore", changeScore)


func changeScore(addScore: float):
	Global.score += addScore
	$score.text = ("Score: " + str(Global.score))
