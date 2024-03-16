extends Bone2D

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var current_rot = get_global_transform().get_rotation()
	
	var target_rotation = atan2(0, 1)
	
	var rotation_diff = target_rotation - current_rot
	rotate(rotation_diff)
	
	
	
