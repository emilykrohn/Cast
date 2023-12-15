extends CharacterBody2D


const SPEED = 300.0
const JUMP_VELOCITY = -400.0

func _physics_process(delta):
	var horizontal_direction = Input.get_axis("ui_left", "ui_right")
	var vertical_direction = Input.get_axis("ui_up", "ui_down")
	if horizontal_direction or vertical_direction:
		velocity = Vector2(horizontal_direction, vertical_direction) * SPEED
	else:
		velocity = Vector2(0,0)

	move_and_slide()
