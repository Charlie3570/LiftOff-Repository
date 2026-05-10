extends Area2D

func _input_event(viewport, event, shape_idx):

	if event is InputEventMouseButton and event.pressed:

		Global.Piece1Collected = true
		
		queue_free()
