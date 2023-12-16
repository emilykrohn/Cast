extends Node

@onready var _sprite = $"../AnimatedSprite2D"

func play(animation):
	_sprite.play(animation)

func flip_left():
	_sprite.flip_h = true

func flip_right():
	_sprite.flip_h = false
