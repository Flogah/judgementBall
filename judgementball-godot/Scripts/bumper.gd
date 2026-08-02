extends StaticBody3D

@export var mesh: MeshInstance3D
@export var points: float = 10
@export var audioPlayer: AudioStreamPlayer3D

func _on_area_3d_area_entered(area: Area3D) -> void:
	mesh.scale.x = 1.3
	mesh.scale.z = 1.3
	Global.changeScore.emit(points)
	Global.hitBumper.emit()
	
	


func _on_area_3d_area_exited(area: Area3D) -> void:
	mesh.scale.x = 1
	mesh.scale.z = 1
