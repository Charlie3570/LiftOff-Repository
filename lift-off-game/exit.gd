extends Button

func _pressed():

	if Global.PreviousScene != "":

		get_tree().change_scene_to_file(Global.PreviousScene)
