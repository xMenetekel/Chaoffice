extends Control
class_name SnippetController

@export var snippet_id: String = ""
@export var correct_zone_ids: Array[String] = []

@onready var confirm_button: Button = $ConfirmButton
@onready var options_panel: OptionsPanel = $OptionsPanel

var zones: Array[ClickZone] = []
var _phase: int = 1
var _active_zone_id: String = ""
var _attempt_count: Dictionary = {}
var _monologue_data: Dictionary = {}

func _ready() -> void:
	_monologue_data = _load_monologue_data()

	for child in get_tree().get_nodes_in_group("click_zones"):
		if child is ClickZone:
			zones.append(child)
			child.flag_clicked.connect(_on_flag_clicked)

	confirm_button.pressed.connect(_on_confirm_pressed)
	options_panel.answered_correctly.connect(_on_option_correct)
	options_panel.answered_wrong.connect(_on_option_wrong)

func _load_monologue_data() -> Dictionary:
	var dir_path: String = scene_file_path.get_base_dir()
	var path: String = dir_path.path_join("%s.json" % snippet_id)

	if not FileAccess.file_exists(path):
		push_warning("No monologue file for %s" % snippet_id)
		return {}

	var file := FileAccess.open(path, FileAccess.READ)
	var data = JSON.parse_string(file.get_as_text())
	return data if data is Dictionary else {}

func _on_confirm_pressed() -> void:
	if _phase != 1:
		return

	var selected_ids: Array[String] = []
	for zone in zones:
		if GameState.get_flag(zone.zone_id + "_selected"):
			selected_ids.append(zone.zone_id)

	if _selection_matches_correct(selected_ids):
		_advance_to_phase_2(selected_ids)
	elif _is_subset_of_correct(selected_ids):
		_show_selection_feedback("incomplete")
	else:
		_show_selection_feedback("wrong")

func _is_subset_of_correct(selected_ids: Array[String]) -> bool:
	for id in selected_ids:
		if id not in correct_zone_ids:
			return false
	return true

func _show_selection_feedback(feedback_type: String) -> void:
	var lines: Array = _monologue_data.get("selection_feedback", {}).get(feedback_type)
	DialogueManager.show_monologue(lines)

func _selection_matches_correct(selected_ids: Array[String]) -> bool:
	if selected_ids.size() != correct_zone_ids.size():
		return false
	for id in correct_zone_ids:
		if id not in selected_ids:
			return false
	return true

func _advance_to_phase_2(selected_ids: Array[String]) -> void:
	_phase = 2
	confirm_button.visible = false

	for zone in zones:
		if zone.zone_id in selected_ids:
			zone.enable_flag_only_interaction()
		else:
			zone.lock_selection()

func _on_flag_clicked(zone_id: String) -> void:
	if _phase != 2:
		return

	_active_zone_id = zone_id
	_get_zone(zone_id).set_permahighlight(true)
	options_panel.open_for(zone_id)

func _get_zone(zone_id: String) -> ClickZone:
	for zone in zones:
		if zone.zone_id == zone_id:
			return zone
	return null

func _on_option_wrong() -> void:
	var count: int = _attempt_count.get(_active_zone_id, 0) + 1
	_attempt_count[_active_zone_id] = count

	var wrong_lines: Array = _monologue_data.get("zones", {}).get(_active_zone_id, {}).get("wrong")
	var line: String = wrong_lines[min(count - 1, wrong_lines.size() - 1)]

	DialogueManager.show_monologue([line])
	await DialogueManager.dialogue_finished

func _on_option_correct() -> void:
	var correct_lines: Array = _monologue_data.get("zones", {}).get(_active_zone_id, {}).get("correct")

	DialogueManager.show_monologue(correct_lines)
	await DialogueManager.dialogue_finished

	var zone := _get_zone(_active_zone_id)
	zone.set_permahighlight(false)
	zone.mark_solved()
	options_panel.close()

	_active_zone_id = ""
	_check_if_all_solved()

func _check_if_all_solved() -> void:
	for id in correct_zone_ids:
		if not GameState.get_flag(id + "_solved"):
			return
	_phase = 3
