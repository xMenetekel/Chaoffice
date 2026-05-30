extends Node

signal dialogue_started(npc_id: String)
signal dialogue_finished(npc_id: String)

var _current_lines: Array = []
var _current_index: int = 0
var _pending_effects: Dictionary = {}
var _active_npc: String = ""
var _active_npc_name: String = ""
var _is_active: bool = false
var _ui: DialogueUI

func init(ui: DialogueUI) -> void:
	_ui = ui

func start_dialogue(npc_id: String, npc_name: String, branches: Array) -> void:
	if _is_active:
		return

	var branch := _pick_branch(branches)
	if branch.is_empty():
		return

	_active_npc = npc_id
	_active_npc_name = npc_name
	_is_active = true
	_current_lines = branch.get("lines", [])
	_pending_effects = branch.get("on_end", {})
	_current_index = 0

	emit_signal("dialogue_started", npc_id)
	_ui.show_line(npc_name, _current_lines[0])

func advance() -> void:
	if not _is_active:
		return
	_current_index += 1
	if _current_index < _current_lines.size():
		_ui.show_line(_active_npc_name, _current_lines[_current_index])
	else:
		_end_dialogue()

func _pick_branch(branches: Array) -> Dictionary:
	for branch in branches:
		var condition = branch.get("condition", null)
		if condition == null or _evaluate(condition):
			return branch
	return {}

func _evaluate(condition: Dictionary) -> bool:
	if condition.has("flag"):
		return GameState.get_flag(condition["flag"])
	if condition.has("all"):
		return condition["all"].all(func(c): return _evaluate(c))
	if condition.has("any"):
		return condition["any"].any(func(c): return _evaluate(c))
	return false

func _apply_effects(effects: Dictionary) -> void:
	if effects.has("set_flag"):
		GameState.set_flag(effects["set_flag"])
	if effects.has("set_flags"):
		for flag in effects["set_flags"]:
			GameState.set_flag(flag)

func _end_dialogue() -> void:
	if not _pending_effects.is_empty():
		_apply_effects(_pending_effects)

	var finished_npc := _active_npc
	_current_lines = []
	_current_index = 0
	_pending_effects = {}
	_active_npc = ""
	_active_npc_name = ""
	_is_active = false

	_ui.hide_dialogue()
	emit_signal("dialogue_finished", finished_npc)
