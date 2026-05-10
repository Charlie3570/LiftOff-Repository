extends Node2D


func _process(delta: float) -> void:
	if Global.Lights == true and $ColorRect.visible == true:
		$ColorRect.visible = false
	elif Global.Lights == false and $ColorRect.visible == false:
		$ColorRect.visible = true
	if Global.FlowerSolved == true:
		$Sprite2D.visible = false
		$Sprite2D2.visible = true
	else:
		$Sprite2D.visible = true
		$Sprite2D2.visible = false
func _on_collider_2d_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed:
		$Sprite2D.visible = false
		$Sprite2D2.visible = true
		Global.FlowerSolved = true
	
