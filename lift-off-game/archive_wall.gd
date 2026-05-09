extends Node2D


func _on_left_pressed() -> void:
	get_tree().change_scene_to_file("res://memory_wall.tscn")


func _on_right_pressed() -> void:
	get_tree().change_scene_to_file("res://garden_wall.tscn")
func _process(delta: float) -> void:
	if Global.Lights == true and $ColorRect.visible == true:
		$ColorRect.visible = false
	elif Global.Lights == false and $ColorRect.visible == false:
		$ColorRect.visible = true
