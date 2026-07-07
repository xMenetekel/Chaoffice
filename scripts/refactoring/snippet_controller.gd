extends Control
class_name SnippetController

@export var snippet_id: String = ""
@export var correct_zone_ids: Array[String] = []
@export var show_intro: bool = true

@onready var confirm_button: TextureButton = $ConfirmButton
@onready var options_panel: OptionsPanel = $OptionsPanel
@onready var dialogue_ui: DialogueUI = $DialogueUI

var zones: Array[ClickZone] = []
var _phase: int = 1
var _active_zone_id: String = ""
var _attempt_count: Dictionary = {}
var _monologue_data: Dictionary = {}
var _intro_shown: bool = false
var _pending_option_id: String = ""

func _ready() -> void:
	_monologue_data = _load_monologue_data()
	#dialogue_ui.allow_fast_forward = false #auskommentieren für dev
	
	var hover_rect: ColorRect = confirm_button.get_node("HoverRect")
	hover_rect.color = Color(1, 1, 1, 0.3)
	hover_rect.visible = false
	
	confirm_button.mouse_entered.connect(func(): hover_rect.visible = true)
	confirm_button.mouse_exited.connect(func(): hover_rect.visible = false)

	for child in get_tree().get_nodes_in_group("click_zones"):
		if child is ClickZone:
			zones.append(child)
			child.flag_clicked.connect(_on_flag_clicked)

	confirm_button.pressed.connect(_on_confirm_pressed)
	options_panel.card_selected.connect(_on_card_selected)
	dialogue_ui.option_confirmed.connect(_on_option_confirmed)
	_show_intro()

func _load_monologue_data() -> Dictionary:
	var dir_path: String = scene_file_path.get_base_dir()
	var path: String = dir_path.path_join("%s.json" % snippet_id)

	if not FileAccess.file_exists(path):
		push_warning("No monologue file for %s" % snippet_id)
		return {}

	var file := FileAccess.open(path, FileAccess.READ)
	var data = JSON.parse_string(file.get_as_text())
	return data if data is Dictionary else {}

func _show_intro() -> void:
	if not show_intro:
		return
	if _intro_shown:
		return
	_intro_shown = true
	var lines: Array = _monologue_data.get("intro", ["..."])
	if lines == null:
		lines = ["..."]
	DialogueManager.show_monologue(lines)

func _show_phase_transition() -> void:
	var lines: Array = _monologue_data.get("phase_transition", ["..."])
	if lines == null:
		lines = ["..."]
	DialogueManager.show_monologue(lines)
	await DialogueManager.dialogue_finished

func _on_confirm_pressed() -> void:
	if _phase != 1:
		return

	var selected_ids: Array[String] = []
	for zone in zones:
		if GameState.get_flag(zone.zone_id + "_selected"):
			selected_ids.append(zone.zone_id)

	if _selection_matches_correct(selected_ids):
		await _show_phase_transition()
		_advance_to_phase_2(selected_ids)
	elif _is_subset_of_correct(selected_ids):
		_show_selection_feedback("incomplete")
	else:
		_show_selection_feedback("wrong")

func _show_selection_feedback(feedback_type: String) -> void:
	var lines: Array = _monologue_data.get("selection_feedback", {}).get(feedback_type, ["..."])
	if lines == null:
		lines = ["..."]
	DialogueManager.show_monologue(lines)

func _selection_matches_correct(selected_ids: Array[String]) -> bool:
	if selected_ids.size() != correct_zone_ids.size():
		return false
	for id in correct_zone_ids:
		if id not in selected_ids:
			return false
	return true

func _is_subset_of_correct(selected_ids: Array[String]) -> bool:
	for id in selected_ids:
		if id not in correct_zone_ids:
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
	
	if _active_zone_id != "" and _active_zone_id != zone_id:
		_get_zone(_active_zone_id).set_permahighlight(false)

	_active_zone_id = zone_id
	_get_zone(zone_id).set_permahighlight(true)
	var asset_dir: String = scene_file_path.get_base_dir().path_join("optionsnippets")
	dialogue_ui.keep_visible_after_finish = true
	dialogue_ui.visible = false 
	dialogue_ui.set_refactor_option_mode()
	options_panel.open_for(zone_id, asset_dir)

func _get_zone(zone_id: String) -> ClickZone:
	for zone in zones:
		if zone.zone_id == zone_id:
			return zone
	return null

func _on_card_selected(option_id: String) -> void:
	_pending_option_id = option_id
	var option_entry: Dictionary = _get_option_entry(option_id)
	var preview_lines: Array = option_entry.get("preview", ["..."])
	if preview_lines == null:
		preview_lines = ["..."]
	DialogueManager.cancel_dialogue()
	dialogue_ui.hide_confirm_button() 
	await get_tree().process_frame
	DialogueManager.show_monologue(preview_lines)
	dialogue_ui.show_confirm_button()

func _on_option_confirmed() -> void:
	DialogueManager.cancel_dialogue()
	await get_tree().process_frame 
	if options_panel.evaluate_pending():
		_on_option_correct()
	else:
		_on_option_wrong()

func _on_option_wrong() -> void:
	var option_entry: Dictionary = _get_option_entry(_pending_option_id)
	var count: int = _attempt_count.get(_active_zone_id, 0) + 1
	_attempt_count[_active_zone_id] = count
	var wrong_lines: Array = option_entry.get("wrong", ["..."])
	if wrong_lines == null:
		wrong_lines = ["..."]
	var line: String = wrong_lines[min(count - 1, wrong_lines.size() - 1)]
	DialogueManager.show_monologue([line])
	await DialogueManager.dialogue_finished
	DialogueManager.cancel_dialogue()
	dialogue_ui.keep_visible_after_finish = false
	dialogue_ui.visible = true

func _on_option_correct() -> void:
	var option_entry: Dictionary = _get_option_entry(_pending_option_id)
	var correct_lines: Array = option_entry.get("correct", ["Richtig!"])
	if correct_lines == null:
		correct_lines = ["Richtig!"]
	DialogueManager.show_monologue(correct_lines)
	await DialogueManager.dialogue_finished

	var zone := _get_zone(_active_zone_id)
	zone.set_permahighlight(false)
	zone.mark_solved()
	options_panel.close()
	dialogue_ui.keep_visible_after_finish = false
	dialogue_ui._hide_after_finish()
	dialogue_ui.set_normal_mode()
	_active_zone_id = ""
	_check_if_all_solved()

func _get_option_entry(option_id: String) -> Dictionary:
	var clean_id: String = option_id
	if option_id.contains("option_"):
		clean_id = "option_" + option_id.split("option_")[1]
	var zone_data: Dictionary = _monologue_data.get("zones", {})
	var zone_entry: Dictionary = zone_data.get(_active_zone_id, {})
	var option_entry: Dictionary = zone_entry.get("options", {}).get(clean_id, {})
	return option_entry

func _check_if_all_solved() -> void:
	for id in correct_zone_ids:
		if not GameState.get_flag(id + "_solved"):
			return
	_phase = 3
	await _show_outro()
	_return_to_main()

func _show_outro() -> void:
	dialogue_ui._hide_after_finish()
	dialogue_ui.set_normal_mode()
	dialogue_ui.keep_visible_after_finish = false
	var lines: Array = _monologue_data.get("outro", ["..."])
	if lines == null:
		lines = ["..."]
	DialogueManager.show_monologue(lines)
	await DialogueManager.dialogue_finished


func _return_to_main() -> void:
	GameState.set_flag(snippet_id + "_completed", true)
	get_tree().change_scene_to_file("res://scenes/main.tscn")
