extends State
class_name StateCamera

@onready var freeCam: Camera3D = get_viewport().get_camera_3d()
@export var FlipCam: Camera3D
@export var TelCam: Camera3D
@export var TableCam: Camera3D

func _ready() -> void:
	freeCam = get_viewport().get_camera_3d()
	print(freeCam)

func changeCamera(newCam: Camera3D):
	newCam.make_current()
