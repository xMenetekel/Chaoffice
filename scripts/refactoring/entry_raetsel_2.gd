extends Area2D
class_name EntryRaetsel 

@export var puzzle_scene_path: String = "res://scenes/refactoring/refac_02/refac02.tscn"
@export var puzzle_id: String = "refac_02"

var player_nearby: bool = false

func _ready() -> void:
	player_nearby = false
	body_entered.connect(_on_body_entered)
	body_exited.connect(_on_body_exited)
	print("puzzle_id: ", puzzle_id)
	print("completed flag: ", GameState.get_flag(puzzle_id + "_completed"))
	
	if GameState.get_flag(puzzle_id + "_completed"):
		set_process_input(false)
		$InteractionRange.disabled = true

func _input(event: InputEvent) -> void:
	if GameState.get_flag(puzzle_id + "_completed"):
		return
	if player_nearby and event.is_action_pressed("interact"):
		_open_puzzle()

func _open_puzzle() -> void:
	if GameState.get_flag(puzzle_id + "_completed"):
		return 
	
	var player = get_tree().get_first_node_in_group("player")
	if player:
		GameState.save_player_position(player.global_position)
	for npc in get_tree().get_nodes_in_group("npcs"):
		GameState.save_npc_position(npc.npc_id, npc.global_position)
	get_tree().change_scene_to_file(puzzle_scene_path)

func _on_body_entered(body: Node) -> void:
	if body.is_in_group("player"):
		print("body etnered")
		player_nearby = true

func _on_body_exited(body: Node) -> void:
	if body.is_in_group("player"):
		player_nearby = false
