extends Control


func _on_button_quit_button_up() -> void:
	get_tree().quit()


func _on_button_main_menu_button_up() -> void:
	get_tree().change_scene_to_file("res://Scenes/mainmenu.tscn")


func _on_button_resume_button_up() -> void:
	visible = false
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
