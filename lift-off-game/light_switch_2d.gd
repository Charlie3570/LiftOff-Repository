extends Area2D

func _input_event(viewport, event, shape_idx):

	if event is InputEventMouseButton and event.pressed:
		if Global.Lights == false:
			Global.Lights = true
		elif Global.Lights == true:
			Global.Lights = false
