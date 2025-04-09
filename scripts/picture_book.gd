extends Control


@onready var page: Label = $Page
@onready var panel: Panel = $Panel


var images = [preload("res://assets/picturebooks/book1/p1.png"), preload("res://assets/picturebooks/book1/p2.png"), preload("res://assets/picturebooks/book1/p3.png"), preload("res://assets/picturebooks/book1/p4.png")]

var current_page = 0

func _on_prev_pressed() -> void:
	var style_box = panel.get_theme_stylebox("panel")
	current_page -= 1
	if current_page == -1:
		current_page = len(images) - 1
	style_box.texture = images[current_page]
	page.text = "Page %d/%d" % [current_page+1, len(images)]

func _on_next_pressed() -> void:
	var style_box = panel.get_theme_stylebox("panel")
	current_page += 1
	if current_page == len(images):
		current_page = 0
	style_box.texture = images[current_page]
	page.text = "Page %d/%d" % [current_page+1, len(images)]

func _on_exit_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/digital_library.tscn")
