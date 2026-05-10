
extends Node2D

var rotation_amount = 30

func _process(delta: float) -> void:
	if Global.Lights == true and $ColorRect.visible == true:
		$ColorRect.visible = false
	elif Global.Lights == false and $ColorRect.visible == false:
		$ColorRect.visible = true
	if $Hand.rotation_degrees == 60 and $Hand2.rotation_degrees == -30:
		Global.ClockSolved = true
		$Lightened.visible = true
	if Global.ClockSolved:
		$Lightened.visible = true
		
func _on_up_button_pressed():

	$Hand.rotation_degrees += rotation_amount



func _on_down_button_pressed():

	$Hand.rotation_degrees -= rotation_amount



func _on_up_button_2_pressed() -> void:
	$Hand2.rotation_degrees += rotation_amount



func _on_down_button_2_pressed() -> void:
	$Hand2.rotation_degrees -= rotation_amount
