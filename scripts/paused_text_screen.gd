extends Control


@onready var label: Label = $VBoxContainer/Label
@onready var canvas_layer: CanvasLayer = $".."
@onready var canvas_layer_3: CanvasLayer = $"../../CanvasLayer3"
@onready var score: Control = $"../../CanvasLayer3/Score"

const hints = ["Leaders help make rules for our country", "Scales represent justice in India", "The president is the leader of our country", "Right to Education gives you the right to go to school"]


func _on_resume_pressed() -> void:
	self.hide()
	canvas_layer.hide()
	canvas_layer_3.show()
	score.show()
	Engine.time_scale = 1


func _on_canvas_layer_visibility_changed() -> void:
	var index = randi() % hints.size()
	label.text = hints[index]
	
