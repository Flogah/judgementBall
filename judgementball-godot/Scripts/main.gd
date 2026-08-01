extends Node3D


@export var papers: Array[StaticBody3D]

func _ready() -> void:
	for paper in papers:
		paper.visible = false
	Global.connect("updateClues", makePaperVisible)

func makePaperVisible():
	if Global.clues < 5:
		Global.clues += 1
	papers[Global.clues-1].visible = true
