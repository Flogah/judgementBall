extends CharacterBody3D


var curRot: float
@export var mesh: MeshInstance3D

func _ready() -> void:
	curRot = rotation_degrees.y
	Global.changeFlipperLength.connect(changeLength)


func _physics_process(delta: float) -> void:
	if Input.is_action_pressed("interact"):
		if rotation_degrees.y < 20: 
			rotate(Vector3.UP, 10*delta)
			Global.flipperUp.emit()
	elif rotation_degrees.y >= curRot:
		rotate(Vector3.UP, -10*delta)
		Global.flipperDown.emit()

func changeLength():
	global_scale(Vector3(1, 1, 1.01))
