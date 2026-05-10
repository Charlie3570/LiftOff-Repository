extends Node2D

var correct = false

func _process(delta: float) -> void:
	if Global.Lights == true and $ColorRect.visible == true:
		$ColorRect.visible = false
	elif Global.Lights == false and $ColorRect.visible == false:
		$ColorRect.visible = true
	if current_face == 5 and current_face2 == 3 and current_face3 == 1:
		Global.LanguageBlockSolve = false
		$Lightened.visible = true
		correct = true
	
	

var current_face = 0
var current_face2 = 0
var current_face3 = 0

var textures = [
	preload("res://Language1.png"),
	preload("res://Language2.png"),
	preload("res://Language3.png"),
	preload("res://Language4.png"),
	preload("res://Language5.png")
]


func _on_slot_2d_3_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed and !correct:

		current_face += 1

		if current_face > 4:
			current_face = 0
		print(current_face3)

		$Sprite2D2.texture = textures[current_face]

		if current_face3 == 4 and current_face2 == 2 and current_face == 0:
			Global.LanguageBlockSolve = false
			$Lightened.visible = true
			correct = true



func _on_slot_2d_2_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed and !correct:

		current_face2 += 1

		if current_face2 > 4:
			current_face2 = 0

		$Sprite2D3.texture = textures[current_face2]
		if current_face3 == 4 and current_face2 == 2 and current_face == 0:
			Global.LanguageBlockSolve = false
			$Lightened.visible = true
			correct = true

func _on_slot_2d_1_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed and !correct:

		current_face3 += 1

		if current_face3 > 4:
			current_face3 = 0

		$Sprite2D4.texture = textures[current_face3]
		if current_face3 == 4 and current_face2 == 2 and current_face == 0:
			Global.LanguageBlockSolve = false
			$Lightened.visible = true
			correct = true
