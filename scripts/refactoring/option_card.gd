extends Control
class_name OptionCard

@export var option_id: String = "option_a"

signal pressed(option_id: String)

func _ready() -> void:
	gui_input.connect(_on_gui_input)

func _on_gui_input(event: InputEvent) -> void:
	if event.is_action_pressed("interact"):
		pressed.emit(option_id)

func set_artwork(texture: Texture2D) -> void:
	$Vorschlag.texture = texture
