class_name  Interactable
extends StaticBody3D

@export var highlight_model:MeshInstance3D

var focused:bool = false
var highlight_shader:Shader = preload("res://Assets/Shader/highlight_fresnel.gdshader")

func interact():
	pass

func highlight(player: Player):
	var shader_material = ShaderMaterial.new()
	shader_material.shader = highlight_shader
	highlight_model.material_overlay = shader_material
	player.on_unfocus.connect(remove_highlight.bind(player))

func remove_highlight(player: Player):
	focused = false
	player.on_unfocus.disconnect(remove_highlight)
	highlight_model.material_overlay = null
