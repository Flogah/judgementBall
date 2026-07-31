extends CharacterBody3D

var curRot: float
@export var mesh: MeshInstance3D

func _ready() -> void:
	curRot = rotation_degrees.y


func _physics_process(delta: float) -> void:
	if Input.is_action_pressed("rightClick"):
		if rotation_degrees.y > -20: 
			rotate(Vector3.UP, -10*delta)
	elif rotation_degrees.y <= curRot:
		rotate(Vector3.UP, 10*delta)

func _input(event: InputEvent) -> void:
	if event.is_action_pressed("update"):
		global_scale(Vector3(1, 1, 1.01))
