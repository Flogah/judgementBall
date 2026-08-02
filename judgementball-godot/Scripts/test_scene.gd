extends Node3D

@onready var ball = get_tree().get_nodes_in_group("ball")
var active = false
var pinball = preload("res://Scenes/Pintable/ball.tscn")
@onready var chooseUI: Control = $Choose

func _ready() -> void:
	chooseUI.visible = false
	CameraSignal.connect("changeToFlipper", setActive)
	CameraSignal.connect("changeToFree", setActive)
	Global.connect("setFlipperActive", setActive)

func _process(delta: float) -> void:
	if active && Global.gameState == "Walk":
		Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
		if Input.is_action_just_pressed("testInput") && !ball:
			var activeBall = pinball.instantiate()
			add_child(activeBall)
			activeBall.transform.origin = Vector3(-0.7, 0.6, -0.2)
		ball = get_tree().get_nodes_in_group("ball")
	if active && Global.gameState == "Choose":
		chooseUI.visible = true
	else:
		chooseUI.visible = false

func setActive():
	active = !active
