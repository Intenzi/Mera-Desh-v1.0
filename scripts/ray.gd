extends Node2D

@onready var ray_cast_2d: RayCast2D = $RayCast2D

var used = false;
signal guidance;
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if ray_cast_2d.is_colliding() and not used:
		print("yeah")
		guidance.emit()
		used = true;
