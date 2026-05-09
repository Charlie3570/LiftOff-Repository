extends Area2D

func _input_event(viewport, event, shape_idx):

	if event is InputEventMouseButton and event.pressed:

		# store where we came from
		Global.PreviousScene = get_tree().current_scene.scene_file_path

		# load zoom scene
		Global.PreviousScene = get_tree().current_scene.name
		get_tree().change_scene_to_file("res://screen_zoom.tscn")
