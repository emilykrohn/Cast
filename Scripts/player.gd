extends CharacterBody2D

var speed = 200

func _physics_process(delta):
	%PlayerMovement.movement()

	move_and_slide()
