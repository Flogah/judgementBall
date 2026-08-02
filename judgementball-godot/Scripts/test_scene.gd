extends Node3D

@onready var ball = get_tree().get_nodes_in_group("ball")
var active = false
var pinball = preload("res://Scenes/Pintable/ball.tscn")

func _ready() -> void:
	CameraSignal.connect("changeToFlipper", setActive)
	CameraSignal.connect("changeToFree", setActive)

func _process(delta: float) -> void:
	if active:
		if Input.is_action_just_pressed("testInput") && !ball:
			var activeBall = pinball.instantiate()
			add_child(activeBall)
			activeBall.transform.origin = Vector3(-0.7, 0.6, -0.2)
		ball = get_tree().get_nodes_in_group("ball")

func setActive():
	active = !active
