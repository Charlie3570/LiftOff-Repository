extends Area2D

func _input_event(viewport, event, shape_idx):

	if event is InputEventMouseButton and event.pressed:

		# store where we came from 
		Global.SceneToLoad = "res://memory_wall.tscn"
		# load zoom scene
		get_tree().change_scene_to_file("res://clock.tscn")
