extends Node3D


@export var papers: Array[StaticBody3D]

func _ready() -> void:
	var x = 0
	for paper in papers:
		if x >= Global.clues:
			paper.visible = false
			paper.get_node("CollisionShape3D").disabled = true
		x += 1
	Global.connect("updateClues", makePaperVisible)
	Global.connect("hidePapers", hidePapers)

func makePaperVisible():
	if Global.clues < 5:
		Global.clues += 1
	papers[Global.clues-1].visible = true
	var curCollisionShape = papers[Global.clues-1].get_node("CollisionShape3D")
	curCollisionShape.disabled = false

func hidePapers():
	var x = 0
	for paper in papers:
		if x >= Global.clues:
			paper.visible = false
			paper.get_node("CollisionShape3D").disabled = true
		x += 1
