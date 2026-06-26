extends Control
class_name ClickZone

@export var zone_id: String = "placeholder" #change nach duplicate

@onready var highlight: ColorRect = $Highlight 
@onready var flag_green: TextureRect = $FlagGreen
@onready var flag_red: TextureButton = $FlagRed

signal flag_clicked(zone_id: String)

var is_selectable: bool = true
var is_permahighlighted: bool = false

func _ready() -> void:
	highlight.modulate = Color(1, 1, 1, 0)
	flag_red.disabled = true
	flag_red.pressed.connect(_on_flag_pressed)
	_refresh_flags()
	mouse_entered.connect(_on_hover_start)
	mouse_exited.connect(_on_hover_end)
	gui_input.connect(_on_gui_input)

func _on_hover_start() -> void:
	if is_permahighlighted:
		return
	highlight.modulate = Color(1, 1, 1, 0.3)

func _on_hover_end() -> void:
	if is_permahighlighted:
		return
	highlight.modulate = Color(1, 1, 1, 0)

func _on_gui_input(event: InputEvent) -> void:
	if not is_selectable:
		return
	if event.is_action_pressed("interact"):
		var new_state := not GameState.get_flag(zone_id + "_selected") #check with == true
		GameState.set_flag(zone_id + "_selected", new_state)
		_refresh_flags()

func _refresh_flags() -> void:
	var solved := GameState.get_flag(zone_id + "_solved")
	var selected := GameState.get_flag(zone_id + "_selected")
	flag_green.visible = solved
	flag_red.visible = selected and not solved

func _on_flag_pressed() -> void:
	flag_clicked.emit(zone_id)

func lock_selection() -> void:
	is_selectable = false
	mouse_filter = Control.MOUSE_FILTER_IGNORE
	highlight.modulate = Color(1,1,1,0.3)

func enable_flag_only_interaction() -> void:
	is_selectable = false
	flag_red.disabled = false
	mouse_filter = ClickZone.MOUSE_FILTER_PASS

func set_permahighlight(active: bool) -> void:
	is_permahighlighted = active
	highlight.modulate = Color(1, 1, 1, 0.3 if active else 0.0)

func mark_solved() -> void:
	GameState.set_flag(zone_id + "_solved", true)
	flag_red.disabled = true
	mouse_filter = Control.MOUSE_FILTER_IGNORE
	_refresh_flags()
