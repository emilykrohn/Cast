class_name enemy

var health: int
var enemy_global_position: Vector2
var player_global_position: Vector2

func take_damage(amount):
	health -= amount

func damage_player(player_health, amount):
	return player_health - amount

func if_in_range(range):
	if abs(player_global_position - enemy_global_position) < Vector2(range,range):
		return true
	return false
