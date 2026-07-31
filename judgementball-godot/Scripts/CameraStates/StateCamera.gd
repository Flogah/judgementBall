extends State
class_name StateCamera

@onready var freeCam: Camera3D = get_viewport().get_camera_3d()
@export var FlipCam: Camera3D
@export var TelCam: Camera3D
@export var TableCam: Camera3D
@export var SwitchCam : Camera3D

@export var transition_duration: float = 2.0

func _ready() -> void:
	freeCam = get_viewport().get_camera_3d()

func changeCamera(newCam: Camera3D):
	var curCam = get_viewport().get_camera_3d()
	SwitchCam.global_position = curCam.global_position
	SwitchCam.global_rotation = curCam.global_rotation
	SwitchCam.make_current()
	
	var tween = create_tween().set_parallel(true)
	tween.set_trans(Tween.TRANS_CUBIC) 
	tween.set_ease(Tween.EASE_IN_OUT)

	tween.tween_property(
		SwitchCam, 
		"global_transform", 
		newCam.global_transform, 
		transition_duration
	)

	tween.finished.connect(func(): newCam.make_current())
