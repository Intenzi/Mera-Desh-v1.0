extends Node2D

@onready var ray_cast_2d: RayCast2D = $RayCast2D

func _process(delta: float) -> void:
	if ray_cast_2d.is_colliding():
		get_tree().change_scene_to_file("res://scenes/world_2.tscn")
