extends Node2D

func _on_left_pressed() -> void:
	get_tree().change_scene_to_file("res://garden_wall.tscn")


func _on_right_pressed() -> void:
	get_tree().change_scene_to_file("res://memory_wall.tscn")
