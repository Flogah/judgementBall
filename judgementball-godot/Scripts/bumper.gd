extends StaticBody3D

@export var mesh: MeshInstance3D

func _on_area_3d_area_entered(area: Area3D) -> void:
	mesh.mesh.top_radius = 0.7
	mesh.mesh.bottom_radius = 0.7


func _on_area_3d_area_exited(area: Area3D) -> void:
	mesh.mesh.top_radius = 0.5
	mesh.mesh.bottom_radius = 0.5
