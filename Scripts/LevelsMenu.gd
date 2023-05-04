extends Control 


var level1Button;
var backButton;


# Called when the node enters the scene tree for the first time.
func _ready():
	level1Button = get_node("CenterContainer/VBoxContainer/Level 1")
	backButton = get_node("CenterContainer/VBoxContainer/Back")

func _on_Level_1_pressed():
	get_tree().change_scene("res://Scenes/Level1.tscn")

func _on_Back_pressed():
	get_tree().change_scene("res://Scenes/StartMenu.tscn")

func _on_Level_2_pressed():
	get_tree().change_scene("res://Scenes/Level2.tscn")


func _on_Level_3_pressed():
	get_tree().change_scene("res://Scenes/Level3.tscn")
