extends Control


func _on_book_1_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/picture_book.tscn")

func _on_book_2_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/picture_book_2.tscn")


func _on_backor_continue_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/main_menu.tscn")
