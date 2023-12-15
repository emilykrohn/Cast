extends CharacterBody2D

func _physics_process(delta):
	%PlayerMovement.movement(200)

	move_and_slide()
