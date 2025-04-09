extends Control


func _on_start_pressed():
	get_tree().change_scene_to_file("res://scenes/world1/game.tscn")

func _on_picturebook_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/digital_library.tscn")

func _on_exit_pressed():
	get_tree().quit()
