extends Interactable

@onready var mesh_instance_3d: MeshInstance3D = %MeshInstance3D
@onready var spot_light_3d: SpotLight3D = %SpotLight3D
@export var text: String = "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet."

var active:bool = false:
	set(new_value):
		active = new_value
		spot_light_3d.visible = new_value

func interact():
	active = not active
	Global.openPaper.emit(text)
