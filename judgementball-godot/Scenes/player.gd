class_name Player
extends CharacterBody3D

signal on_unfocus

@export var movement_speed:float = 3.0
@export var turn_speed:float = 0.3

@onready var camera_3d: Camera3D = %Camera3D
@onready var interaction_ray_cast_3d: RayCast3D = %InteractionRayCast3D

@onready var menu: Control = $inGameMenu

func _ready() -> void:
	menu.visible = false

func _physics_process(delta: float) -> void:
	highlight_interactable()
	
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

func _input(event: InputEvent) -> void:
	if event.is_action_pressed("interact"):
		if is_looking_at_interactable():
			var collider = interaction_ray_cast_3d.get_collider()
			collider.interact()
	
	if event.is_action_pressed("menu"):
		if Input.mouse_mode == Input.MOUSE_MODE_CAPTURED:
			Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
		menu.visible = !menu.visible
		if menu.visible == false:
			Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)

func highlight_interactable():
	if is_looking_at_interactable():
		var collider = interaction_ray_cast_3d.get_collider()
		if collider is Interactable and !collider.focused:
			collider.focused = true
			collider.highlight(self)
	else:
		on_unfocus.emit()

func is_looking_at_interactable() -> bool:
	if interaction_ray_cast_3d.is_colliding():
			var collider = interaction_ray_cast_3d.get_collider()
			if collider is Interactable:
				return true
	return false
