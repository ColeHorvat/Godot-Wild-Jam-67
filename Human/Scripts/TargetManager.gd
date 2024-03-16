class_name TargetManager
extends Node2D

@export var targets: Array[LimbTarget] = []
var selectedTargetIndex = 0
var selectedTarget = null

func registerMarker(target):
	targets.append(target)
	
func _input(event):
	if event is InputEventKey:
		if event.pressed:
			if event.keycode == KEY_TAB:
				selectedTargetIndex = ( selectedTargetIndex + 1) % targets.size()
				updateSelectedMarker()

func updateSelectedMarker():
	for target in targets:
		target.isEnabled = false
	
	selectedTarget = targets[selectedTargetIndex]
	selectedTarget.isEnabled = true
	


