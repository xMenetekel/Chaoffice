class_name DialogueUI
extends CanvasLayer

@onready var panel: NinePatchRect = $Panel
@onready var npc_name_label: Label = $Panel/MarginContainer/Control/NPCName
@onready var dialogue_text: RichTextLabel = $Panel/MarginContainer/Control/DialogueText
@onready var advance_hint: Label = $Panel/MarginContainer/Control/AdvanceHint
@onready var confirm_option_button: TextureButton = $Panel/MarginContainer/Control/ConfirmOptionButton

const SPEED_NORMAL := 0.04
const SPEED_FAST   := 0.01

var _tween: Tween
var _is_fast: bool = false
var keep_visible_after_finish: bool = false
var allow_fast_forward: bool = true

signal option_confirmed


func _ready() -> void:
	DialogueManager.init(self)
	visible = false
	confirm_option_button.visible = false
	confirm_option_button.pressed.connect(_on_confirm_option_pressed)

func show_line(npc_name: String, text: String) -> void:
	visible = true
	npc_name_label.text = npc_name
	dialogue_text.text = text
	dialogue_text.visible_ratio = 0.0
	_is_fast = false
	advance_hint.visible = allow_fast_forward
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
	if keep_visible_after_finish:
		return 
	if _tween:
		_tween.kill()
	visible = false
	_is_fast = false

func _input(event: InputEvent) -> void:
	if not visible:
		return
	if not DialogueManager._is_active:
		return
	if not event.is_action_pressed("interact"):
		return
	
	if confirm_option_button.visible:
		return
		
	get_viewport().set_input_as_handled()
	
	if not allow_fast_forward:
		if dialogue_text.visible_ratio >= 1.0:
			DialogueManager.advance()
		return

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

func set_refactor_option_mode() -> void:
	$Panel.set_anchor_and_offset(SIDE_LEFT, 0.0, 0.0)
	$Panel.set_anchor_and_offset(SIDE_RIGHT, 0.55, 0.0)
	$Panel.set_anchor_and_offset(SIDE_TOP, 0.8, 0.0)
	$Panel.set_anchor_and_offset(SIDE_BOTTOM, 1.0, 0.0)

func set_normal_mode() -> void:
	$Panel.set_anchor_and_offset(SIDE_LEFT, 0.0, 0.0)
	$Panel.set_anchor_and_offset(SIDE_RIGHT, 1.0, 0.0)
	$Panel.set_anchor_and_offset(SIDE_TOP, 0.8, 0.0)
	$Panel.set_anchor_and_offset(SIDE_BOTTOM, 1.0, 0.0)

func show_confirm_button() -> void:
	confirm_option_button.visible = true

func hide_confirm_button() -> void:
	confirm_option_button.visible = false

func _on_confirm_option_pressed() -> void:
	print("CONFIRM OPTION PRESSED") 
	confirm_option_button.visible = false 
	option_confirmed.emit()

func _hide_after_finish() -> void:
	keep_visible_after_finish = false
	if _tween:
		_tween.kill()
	visible = false
	_is_fast = false
