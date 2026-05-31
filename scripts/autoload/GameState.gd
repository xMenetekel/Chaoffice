extends Node

signal day_changed(day: String)

const DAYS := ["monday", "tuesday", "wednesday", "thursday", "friday"]
var day_index: int = 0

var current_day: String:
	get: return DAYS[day_index]

var flags: Dictionary = {}

func advance_day() -> void:
	day_index = min(day_index + 1, DAYS.size() - 1)
	emit_signal("day_changed", current_day)

func set_flag(key: String, value: bool = true) -> void:
	flags[key] = value

func get_flag(key: String) -> bool:
	return flags.get(key, false)

#_ready nur für dev um custom den Tag zu setten
func _ready() -> void:
	day_index = 0
	print(DAYS[day_index])
