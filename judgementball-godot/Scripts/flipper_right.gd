extends CharacterBody3D

var curRot: float

func _ready() -> void:
	curRot = rotation_degrees.y


func _physics_process(delta: float) -> void:
	if Input.is_action_pressed("rightClick"):
		if rotation_degrees.y > -20: 
			rotate(Vector3.UP, -10*delta)
	elif rotation_degrees.y <= curRot:
		rotate(Vector3.UP, 10*delta)
