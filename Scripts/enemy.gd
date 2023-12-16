class_name enemy

var health: int
var position: Vector2
var player_position: Vector2

func take_damage(amount):
	health -= amount

func damage_player(player_health, amount):
	return player_health - amount

func in_range(range):
	if abs(player_position.x - position.x) < range and abs(player_position.y - position.y) < range:
		return true
	return false
