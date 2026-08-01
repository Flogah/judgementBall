extends Label


func _ready() -> void:
	Global.connect("changeScore", changeScore)


func changeScore(addScore: float):
	Global.score += addScore
	text = ("Score: " + str(Global.score))
