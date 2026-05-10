extends Area2D

func _input_event(viewport, event, shape_idx):

	if event is InputEventMouseButton and event.pressed and Global.SwitchSolved:

		# store where we came from
		Global.SceneToLoad = "res://observatory_wall.tscn"
		# load zoom scene
		get_tree().change_scene_to_file("res://vault.tscn")
