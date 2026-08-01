extends Control


func _on_button_quit_button_up() -> void:
	get_tree().quit()


func _on_button_start_button_up() -> void:
	get_tree().change_scene_to_file("res://Scenes/main.tscn")
	queue_free()
	

func _on_button_new_game_button_up() -> void:
	get_tree().change_scene_to_file("res://Scenes/main.tscn")
	queue_free()
