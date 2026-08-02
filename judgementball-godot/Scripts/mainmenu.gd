extends Control


func _on_button_quit_button_up() -> void:
	get_tree().quit()


func _on_button_start_button_up() -> void:
	get_tree().change_scene_to_file("res://Scenes/room.tscn")
	queue_free()
	

func _on_button_new_game_button_up() -> void:
	get_tree().change_scene_to_file("res://Scenes/room.tscn")
	Global.currentCase = 1
	Global.clues = 0
	Global.score = 0
	Global.clueScore = 0
	Global.changeScore.emit(0)
	queue_free()
