extends Node

@onready var _sprite = $"../AnimatedSprite2D"

func play(animation):
	_sprite.play(animation)

func stop():
	_sprite.stop()
