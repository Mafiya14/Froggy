extends Node2D

func _process(delta):
	$Camera2D.position.x = $Player.position.x + 400
	$Camera2D.position.y = $Player.position.y
	
