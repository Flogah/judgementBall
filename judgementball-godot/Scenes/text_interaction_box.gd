extends Interactable

@onready var spot_light_3d: SpotLight3D = %SpotLight3D

var active:bool = false:
	set(new_value):
		active = new_value
		spot_light_3d.visible = new_value

func interact():
	active = not active
