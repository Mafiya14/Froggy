tool

extends Area2D

export(String, FILE) var next_scene_path = ""

func _get_configuration_warning() -> String:
	if next_scene_path == "":
		return "Scene path must be set"
	else:
		return ""
		



func _on_LevelEnd_body_entered(body):
	if get_tree().change_scene(next_scene_path) != OK:
		print("Unavailable scene")
