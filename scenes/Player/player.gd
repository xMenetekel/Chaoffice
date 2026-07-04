extends CharacterBody2D

@export var move_speed: float  =  10

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	add_to_group("player")
	DialogueManager.dialogue_started.connect(_on_dialogue_started)
	DialogueManager.dialogue_finished.connect(_on_dialogue_finished)
	
	if GameState.player_position != Vector2.ZERO:
		global_position = GameState.player_position


func _on_dialogue_started(_npc_id: String) -> void:
	set_process(false)
	velocity = Vector2.ZERO
	$AnimatedSprite2D.stop()

func _on_dialogue_finished(_npc_id: String) -> void:
	set_process(true)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	
	move_player()
	
	move_and_slide()


func move_player():
	var move_vector: Vector2 = Input.get_vector("move_left", "move_right", "move_up", "move_down")
	
	velocity = move_vector * move_speed
	
	if velocity.x > 0: 
		$AnimatedSprite2D.play("move_right")
	elif velocity.x < 0: 
		$AnimatedSprite2D.play("move_left")
	elif velocity.y < 0: 
		$AnimatedSprite2D.play("move_up")
	elif velocity.y > 0:
		$AnimatedSprite2D.play("move_down")
	else: 
		$AnimatedSprite2D.stop()
