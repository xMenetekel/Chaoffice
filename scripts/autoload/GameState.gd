extends Node

signal day_changed(day: String)

const DAYS := ["monday", "tuesday", "wednesday", "thursday", "friday"]
var day_index: int = 0
var flags: Dictionary = {}
var npc_positions: Dictionary = {}
var player_position: Vector2 = Vector2.ZERO
var current_day: String:
	get: return DAYS[day_index]


func advance_day() -> void:
	day_index = min(day_index + 1, DAYS.size() - 1)
	emit_signal("day_changed", current_day)

func set_flag(key: String, value: bool = true) -> void:
	flags[key] = value

func get_flag(key: String) -> bool:
	return flags.get(key, false)

func save_npc_position(npc_id: String, position: Vector2) -> void:
	npc_positions[npc_id] = position

func get_npc_position(npc_id: String) -> Vector2:
	return npc_positions.get(npc_id, Vector2.ZERO)

func save_player_position(position: Vector2) -> void:
	player_position = position

func get_player_position() -> Vector2:
	return player_position

#_ready nur für dev um custom den Tag zu setten
func _ready() -> void:
	day_index = 3
	print(DAYS[day_index])
