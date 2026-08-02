extends Node3D

@onready var ball = get_tree().get_nodes_in_group("ball")
var active = false
var pinball = preload("res://Scenes/Pintable/ball.tscn")
@onready var chooseUI: Control = $Choose
@onready var spawn : Node3D = $spanPoint

func _ready() -> void:
	chooseUI.visible = false
	CameraSignal.connect("changeToFlipper", setActive)
	CameraSignal.connect("changeToFree", setActive)
	CameraSignal.connect("changeToTable", setActive)
	Global.connect("setFlipperActive", setActive)
	

func _process(delta: float) -> void:
	if active && Global.gameState == "Walk":
		Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
		if Input.is_action_just_pressed("testInput") && !ball:
			var activeBall = pinball.instantiate()
			add_child(activeBall)
			activeBall.transform.origin = spawn.transform.origin
		ball = get_tree().get_nodes_in_group("ball")
	if active && Global.gameState == "Choose":
		chooseUI.visible = true
	else:
		chooseUI.visible = false

func setActive():
	active = !active
