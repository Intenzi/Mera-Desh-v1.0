extends Node

@onready var score: Control = $"../CanvasLayer3/Score"

var count = 0

func add_point():
	count += 1
	#var labelnew = score.get_child('Label')
	print(count)
	#labelnew.text = "Score: %d ⭐" % [count]
