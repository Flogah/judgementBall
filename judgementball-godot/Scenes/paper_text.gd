extends Control


func _ready() -> void:
	Global.connect("openPaper", showPaper)
	visible = false


func showPaper(text: String):
	visible = !visible
	$Label.text = text
