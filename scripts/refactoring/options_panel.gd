extends Control
class_name OptionsPanel

signal answered_correctly
signal answered_wrong

@export var correct_option_by_zone: Dictionary = {}

@onready var cards: Array[OptionCard] = [$OptionCard_a, $OptionCard_b, $OptionCard_c]

var _current_zone_id: String = ""

func _ready() -> void:
	for card in cards:
		card.pressed.connect(_on_card_pressed)

func open_for(zone_id: String) -> void:
	_current_zone_id = zone_id
	visible = true

	var asset_dir := scene_file_path.get_base_dir().path_join("optionsnippets")
	for i in cards.size():
		var option_letter = ["a", "b", "c"][i]
		var path := asset_dir.path_join("%s_option_%s.png" % [zone_id, option_letter])
		if FileAccess.file_exists(path):
			cards[i].artwork = load(path)
		else:
			push_warning("Missing artwork: " + path)

func close() -> void:
	visible = false

func _on_card_pressed(option_id: String) -> void:
	var correct: String = correct_option_by_zone.get(_current_zone_id, "")
	if option_id == correct:
		answered_correctly.emit()
	else:
		answered_wrong.emit()
