extends Control


var is_paused = false setget set_is_paused

func _unhandled_input(event):
	if event.is_action_pressed("pause"):
		self.is_paused = !is_paused

func set_is_paused(value):
	is_paused = value
	get_tree().paused = is_paused
	visible = is_paused


func _on_ResumeBtn_pressed():
	self.is_paused = false


func _on_QuintBtn_pressed():
	get_tree().change_scene("res://Scenes/StartMenu.tscn")


func _on_LevelsBtn_pressed():
	get_tree().change_scene("res://Scenes/LevelsMenu.tscn")
