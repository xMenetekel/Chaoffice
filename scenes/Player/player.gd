extends CharacterBody2D

@export var move_speed: float  =  10

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	add_to_group("player")


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
		
		
	move_and_slide()
