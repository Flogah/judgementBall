extends CharacterBody3D

@export var movement_speed:float = 3.0
@export var turn_speed:float = 0.3

@onready var camera_3d: Camera3D = %Camera3D

func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta
	
	var cam_forward = -camera_3d.basis.z
	var cam_right = camera_3d.basis.x
	
	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var input_dir := Input.get_vector("left", "right", "backwards", "forward")
	
	if input_dir:
		var forwards_motion = cam_forward * input_dir.y
		var sideways_motion = cam_right * input_dir.x
		var combined_motion = (forwards_motion + sideways_motion)
		combined_motion.y = 0.0
		velocity = combined_motion * movement_speed
	else:
		velocity.x = move_toward(velocity.x, 0, 5.0)
		velocity.z = move_toward(velocity.z, 0, 5.0)

	move_and_slide()
