extends Control
class_name ClickZone

@export var zone_id: String = "placeholder" #change nach duplicate

@onready var highlight: ColorRect = $Highlight 
@onready var flag: TextureRect = $FlagIcon

func _ready() -> void:
	highlight.modulate = Color(1, 1, 1, 0)
	flag.visible = GameState.get_flag(zone_id)
	mouse_entered.connect(_on_hover_start)
	mouse_exited.connect(_on_hover_end)
	gui_input.connect(_on_gui_input)

func _on_hover_start() -> void:
	highlight.modulate = Color(1, 1, 1, 0.3)

func _on_hover_end() -> void:
	highlight.modulate = Color(1, 1, 1, 0)

func _on_gui_input(event: InputEvent) -> void:
	if event.is_action_pressed("interact"):
		var new_state := not GameState.get_flag(zone_id) #check with == true
		GameState.set_flag(zone_id, new_state)
		flag.visible = new_state
