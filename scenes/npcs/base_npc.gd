class_name BaseNPC
extends CharacterBody2D 

@export var npc_id: String = ""
@export var npc_name: String = ""

var dialogue_data: Array = []
var player_nearby: bool = false

func _ready() -> void:
	$Area2D.body_entered.connect(_on_body_entered)
	$Area2D.body_exited.connect(_on_body_exited)
	GameState.day_changed.connect(_on_day_changed)
	_load_dialogue()
	
	var saved_pos: Vector2 = GameState.get_npc_position(npc_id)
	if saved_pos != Vector2.ZERO:
		global_position = saved_pos

func _load_dialogue() -> void:
	var path := "res://dialogue/%s/%s.json" % [npc_id, GameState.current_day]

	if not FileAccess.file_exists(path):
		path = "res://dialogue/%s/default.json" % npc_id

	if not FileAccess.file_exists(path):
		push_warning("No dialogue file for %s" % npc_id)
		dialogue_data = []
		return

	var file := FileAccess.open(path, FileAccess.READ)
	dialogue_data = JSON.parse_string(file.get_as_text())

func _input(event: InputEvent) -> void:
	if player_nearby and event.is_action_pressed("interact"):
		if player_nearby:
			_on_interact()

func _on_interact() -> void:
	if dialogue_data.is_empty():
		return
	DialogueManager.start_dialogue(npc_id, npc_name, dialogue_data)

func _on_day_changed(_day: String) -> void:
	_load_dialogue()

func _on_body_entered(body: Node) -> void:
	if body.is_in_group("player"):
		player_nearby = true

func _on_body_exited(body: Node) -> void:
	if body.is_in_group("player"):
		player_nearby = false
