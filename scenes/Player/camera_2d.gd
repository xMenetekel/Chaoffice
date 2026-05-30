extends Camera2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	
	if Input.is_action_just_released("zoom_in") : 
		zoom.x = zoom.x + 0.25
		zoom.y = zoom.y + 0.25
	
	if Input.is_action_just_released("zoom_out"):
		if zoom.x > 1:
			zoom.x = zoom.x - 0.25
			zoom.y = zoom.y - 0.25
