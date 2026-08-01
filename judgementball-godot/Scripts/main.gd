extends Node3D


@export var papers: Array[StaticBody3D]

func _ready() -> void:
	var x = 0
	for paper in papers:
		if x >= Global.clues:
			paper.visible = false
		x += 1
	Global.connect("updateClues", makePaperVisible)

func makePaperVisible():
	if Global.clues < 5:
		Global.clues += 1
	papers[Global.clues-1].visible = true
