extends Node2D

func _process(delta: float) -> void:
	if Global.Lights == true and $ColorRect.visible == true:
		$ColorRect.visible = false
	elif Global.Lights == false and $ColorRect.visible == false:
		$ColorRect.visible = true
	if Global.Piece1Collected == true:
		$Sprite2D2.visible = false
	else:
		$Sprite2D2.visible = true
