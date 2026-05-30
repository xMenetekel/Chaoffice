class_name DialogueUI
extends CanvasLayer

@onready var panel: NinePatchRect = $Panel
@onready var npc_name_label: Label = $Panel/Control/NPCName
@onready var dialogue_text: RichTextLabel = $Panel/Control/DialogueText
@onready var advance_hint: Label = $Panel/Control/AdvanceHint

const SPEED_NORMAL := 0.04
const SPEED_FAST   := 0.01

var _tween: Tween
var _is_fast: bool = false

func _ready() -> void:
	DialogueManager.init(self)
	visible = false

func show_line(npc_name: String, text: String) -> void:
	visible = true
	npc_name_label.text = npc_name
	dialogue_text.text = text
	dialogue_text.visible_ratio = 0.0
	_is_fast = false
	_play_typewriter(SPEED_NORMAL)

func _play_typewriter(speed: float) -> void:
	if _tween:
		_tween.kill()
	_tween = create_tween()
	var remaining := 1.0 - dialogue_text.visible_ratio
	_tween.tween_property(
		dialogue_text,
		"visible_ratio",
		1.0,
		speed * dialogue_text.get_total_character_count() * remaining
	)

func hide_dialogue() -> void:
	if _tween:
		_tween.kill()
	visible = false
	_is_fast = false

func _input(event: InputEvent) -> void:
	if not visible:
		return
	if not event.is_action_pressed("interact"):
		return

	get_viewport().set_input_as_handled()

	if dialogue_text.visible_ratio < 1.0:
		if not _is_fast:
			_is_fast = true
			_play_typewriter(SPEED_FAST)
		else:
			if _tween:
				_tween.kill()
			dialogue_text.visible_ratio = 1.0
	else:
		DialogueManager.advance()
