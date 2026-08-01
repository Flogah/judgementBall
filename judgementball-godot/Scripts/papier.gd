extends Interactable

@onready var mesh_instance_3d: MeshInstance3D = %MeshInstance3D
@onready var spot_light_3d: SpotLight3D = %SpotLight3D
@export var clueNbr : int = 1

var active:bool = false:
	set(new_value):
		active = new_value
		spot_light_3d.visible = new_value

func interact():
	active = not active
	Global.openPaper.emit(Global.cases[str(Global.currentCase)][str(clueNbr)])
