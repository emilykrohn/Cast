extends Node

const dash_speed = 500
var cooldown = true
var timer = Timer.new()

func _ready():
	timer.timeout.connect(_on_timer_timeout)
	timer.wait_time = 0.15
	add_child(timer)

func movement():
	var horizontal_direction = Input.get_axis("ui_left", "ui_right")
	var vertical_direction = Input.get_axis("ui_up", "ui_down")
	
	if Input.is_action_just_pressed("ui_select") and cooldown:
		get_parent().speed += dash_speed
		cooldown = false
		start_cooldown()

	if horizontal_direction or vertical_direction:
		%AnimationPlayer.play("walk")
		if horizontal_direction < 0:
			%AnimationPlayer.flip_left()
		else:
			%AnimationPlayer.flip_right()
		get_parent().velocity = Vector2(horizontal_direction, vertical_direction).normalized() * get_parent().speed
	else:
		%AnimationPlayer.play("idle")
		get_parent().velocity = Vector2(0,0)

func start_cooldown():
	timer.start()

func _on_timer_timeout():
	if cooldown == false:
		get_parent().speed -= dash_speed
		cooldown = true
