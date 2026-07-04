extends Control
class_name OptionsPanel

signal card_selected(option_id: String)

@export var correct_option_by_zone: Dictionary = {}

@onready var cards: Array[OptionCard] = [$OptionCard_a, $OptionCard_b, $OptionCard_c]

var _current_zone_id: String = ""
var _pending_option_id: String = ""


func _ready() -> void:
	visible = false
	for card in cards:
		card.pressed.connect(_on_card_pressed)

func open_for(zone_id: String, asset_dir: String) -> void:
	_current_zone_id = zone_id
	reset_highlight()
	visible = true
	for i in cards.size():
		var option_letter: String = ["a", "b", "c"][i]
		var path: String = asset_dir.path_join("%s_option_%s.png" % [zone_id, option_letter])
		print("Suche Artwork: ", path)
		print("Existiert: ", FileAccess.file_exists(path))
		if FileAccess.file_exists(path):
			cards[i].set_artwork(load(path))
		else:
			push_warning("Missing artwork: " + path)

func close() -> void:
	visible = false
	reset_highlight()

func _on_card_pressed(option_id: String) -> void:
	_pending_option_id = option_id
	_highlight_selected(option_id)
	card_selected.emit(option_id)

func evaluate_pending() -> bool:
	var correct = correct_option_by_zone.get(_current_zone_id)
	if correct == null:
		return false
	if correct is Array:
		return _pending_option_id in correct
	return _pending_option_id == str(correct)

func _highlight_selected(selected_option_id: String) -> void:
	for card in cards:
		if card.option_id == selected_option_id:
			card.modulate = Color(1, 1, 1, 1)
		else:
			card.modulate = Color(1, 1, 1, 0.4)

func reset_highlight() -> void:
	for card in cards:
		card.modulate = Color(1, 1, 1, 1)
