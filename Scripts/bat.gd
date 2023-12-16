extends Area2D

var bat

func _ready():
	bat = enemy.new()
	bat.health = 50

func _process(delta):
	bat.position = global_position
	bat.player_position = $%Player.global_position
