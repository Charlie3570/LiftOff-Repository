extends Node2D

func _on_left_pressed() -> void:
	get_tree().change_scene_to_file("res://archive_wall.tscn")
	
func _on_right_pressed() -> void:
	get_tree().change_scene_to_file("res://observatory_wall.tscn")
func _process(delta: float) -> void:
	if Global.Lights == true and $ColorRect.visible == true:
		$ColorRect.visible = false
	elif Global.Lights == false and $ColorRect.visible == false:
		$ColorRect.visible = true
	if Global.ClockSolved:
		$Flower2D/CollisionShape2D.disabled = false
		$Sprite2D.visible = true
		$Sprite2D2.visible = false
	else:
		$Flower2D/CollisionShape2D.disabled = true
		$Sprite2D.visible = false
		$Sprite2D2.visible = true
	if Global.Piece1Collected and Global.Piece2Collected and Global.Piece3Collected and Global.Piece4Collected and !Global.TapeGot:
		$Sprite2D3.visible = true
	else:
		$Sprite2D3.visible = false
	if Global.Piece1Collected:
		$i1.visible = true
	if Global.Piece2Collected:
		$i2.visible = true
	if Global.Piece3Collected:
		$i3.visible = true
	if Global.Piece4Collected:
		$i4.visible = true
