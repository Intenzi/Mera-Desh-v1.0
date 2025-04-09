extends Node2D

@onready var canvas_layer: CanvasLayer = $CanvasLayer
@onready var paused_text_screen: Control = $CanvasLayer/PausedTextScreen

@onready var canvas_layer_2: CanvasLayer = $CanvasLayer2
@onready var quiz_ui: Control = $CanvasLayer2/QuizUI

@onready var canvas_layer_3: CanvasLayer = $CanvasLayer3
@onready var score: Control = $CanvasLayer3/Score

func _on_ray_guidance() -> void:
	canvas_layer_3.hide()
	score.hide()
	canvas_layer.show()
	paused_text_screen.show()
	Engine.time_scale = 0


func _on_quizray_quiz() -> void:
	canvas_layer_3.hide()
	score.hide()
	canvas_layer_2.show()
	quiz_ui.show()
	Engine.time_scale = 0
	
