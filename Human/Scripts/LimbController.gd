extends Marker2D

func _process(delta: float) -> void:
	var mouse_pos = get_global_mouse_position()
	
	set_global_position(mouse_pos)
	
