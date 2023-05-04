extends KinematicBody2D

var Gravity = 20
var Speed = 300
var Motion = Vector2()
var UP = Vector2(0, -1)
var jumpforce = 400
var jump_max = 2
var jump_count = 0
var dJumpTime = 1

func _physics_process(delta):
	Motion.y += Gravity
	Motion = move_and_slide(Motion, UP)
	
	if Input.is_action_pressed("left"):
		Motion.x = -Speed
		$AnimatedSprite.flip_h = true
		$AnimatedSprite.play("run")
		
	elif Input.is_action_pressed("right"):
		Motion.x = Speed
		$AnimatedSprite.flip_h = false
		$AnimatedSprite.play("run")
	else:
		Motion.x = 0
		$AnimatedSprite.play("idle")
		
	if is_on_floor() and jump_count != 0:
		jump_count = 0
		
	if !is_on_floor():
		if Motion.y < 0:
			$AnimatedSprite.play("jump")
		else:
			$AnimatedSprite.play("fall") 
		
	if jump_count<jump_max:
		if Input.is_action_just_pressed("jump"):
			Motion.y = -jumpforce
			jump_count += 1
			if jump_count == 2:
				while (dJumpTime == 0): 
					$AnimatedSprite.play("doubleJump")
					dJumpTime -= delta

	if Motion.x != 0 and is_on_floor():
		if !$AudioStreamPlayer2D.playing:
				$AudioStreamPlayer2D.play()
	else:
		$AudioStreamPlayer2D.stop()
	
