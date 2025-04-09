extends Control


@onready var question_label: Label = $Question
@onready var button: Button = $HBoxContainer/VBoxContainer/Button
@onready var button_2: Button = $HBoxContainer/VBoxContainer/Button2
@onready var button_3: Button = $HBoxContainer/VBoxContainer2/Button3
@onready var button_4: Button = $HBoxContainer/VBoxContainer2/Button4
@onready var canvas_layer_2: CanvasLayer = $".."



const questions = [
	"What is the Indian Constitution?",
	"Who helps make the rules for the country?",
	"What is the right to go to school called?",
	"Which symbol represents justice in India?",
	"Who is the President of India?"
]

const options = [
	["A set of rules", "A big building", "A game", "A map"],
	["Teachers", "Leaders", "Doctors", "Farmers"],
	["Right to Education", "Right to Play", "Right to Sleep", "Right to Eat"],
	["The scales", "The flag", "A bird", "A tree"],
	["The leader of the country", "The head of the army", "The President", "The teacher"]
]

const answers = [0, 1, 0, 0, 2]

var current_question_index = 0
var used_questions = []
var correct_answers = 0
var buttons = []

func _ready():
	# Start the quiz with 3 random questions
	buttons.append(button)
	buttons.append(button_2)
	buttons.append(button_3)
	buttons.append(button_4)
	show_next_question()

func show_next_question():
	if current_question_index >= 3:
		# End of the quiz, show results
		question_label.text = "Quiz finished! Correct answers: %d / 3" % correct_answers
		for btn in buttons:
			btn.text = ""  # Hide btns
			btn.disabled = true
		canvas_layer_2.hide()
		self.hide()
		Engine.time_scale = 1;
		get_tree().change_scene_to_file("res://scenes/main_menu.tscn")
		return

	# Pick a random question
	var index = randi() % questions.size()
	while index in used_questions:
		index = randi() % questions.size()

	used_questions.append(index)
	question_label.text = questions[index]

	# Set button texts for options
	for i in range(4):
		buttons[i].text = options[index][i]

	current_question_index += 1

func _on_button_pressed_1():
	var button_index = 0
	if button_index == answers[used_questions[current_question_index-1]]:
		correct_answers += 1

	# Move to the next question
	show_next_question()

func _on_button_pressed_2():
	var button_index = 1
	if button_index == answers[used_questions[current_question_index-1]]:
		correct_answers += 1
	# Move to the next question
	show_next_question()

func _on_button_pressed_3():
	var button_index = 2
	if button_index == answers[used_questions[current_question_index-1]]:
		correct_answers += 1

	# Move to the next question
	show_next_question()

func _on_button_pressed_4():
	var button_index = 3
	if button_index == answers[used_questions[current_question_index-1]]:
		correct_answers += 1

	# Move to the next question
	show_next_question()
