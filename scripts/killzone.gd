extends Area2D

@onready var timer: Timer = $Timer

func _on_body_entered(body):
	print("hi")
	print("You died!")
	Engine.time_scale = 0.5
	body.get_node("CollisionShape2D").queue_free()  # remove the collision body so we free fall
	timer.start()


func _on_timer_timeout():
	Engine.time_scale = 1
	get_tree().reload_current_scene()
