extends Area2D

func _input_event(viewport, event, shape_idx):

	if event is InputEventMouseButton and event.pressed and Global.LanguageBlockSolve:

		Global.Piece2Collected = true
		
		queue_free()
