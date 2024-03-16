class_name LimbTarget
extends Marker2D

@onready var targetManager: TargetManager = %Targets

func _ready():
	targetManager.registerMarker(self)

@export var isEnabled: bool = false

func _process(delta: float) -> void:
	
	if(isEnabled):
		var mouse_pos = get_global_mouse_position()
		set_global_position(mouse_pos)
	
