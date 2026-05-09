extends Node2D
var locked = false

func select_button(num):
	
	if !locked:
		# Row 1
		if num >= 1 and num <= 5:

			for i in range(1, 6):
				get_node("I" + str(i)).visible = false

		# Row 2
		elif num >= 6 and num <= 10:

			for i in range(6, 11):
				get_node("I" + str(i)).visible = false

		# Row 3
		elif num >= 11 and num <= 15:

			for i in range(11, 16):
				get_node("I" + str(i)).visible = false

		get_node("I" + str(num)).visible = true
		check_solution()

func _on_area_2d_1_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:

	if event is InputEventMouseButton and event.pressed:
		select_button(1)


func _on_area_2d_2_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:

	if event is InputEventMouseButton and event.pressed:
		select_button(2)

func _on_area_2d_3_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed:
		select_button(3)
func _on_area_2d_4_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed:
		select_button(4)


func _on_area_2d_5_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed:
		select_button(5)


func _on_area_2d_6_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed:
		select_button(6)


func _on_area_2d_7_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed:
		select_button(7)


func _on_area_2d_8_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed:
		select_button(8)


func _on_area_2d_9_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed:
		select_button(9)


func _on_area_2d_10_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed:
		select_button(10)


func _on_area_2d_11_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed:
		select_button(11)


func _on_area_2d_12_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed:
		select_button(12)


func _on_area_2d_13_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed:
		select_button(13)


func _on_area_2d_14_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed:
		select_button(14)


func _on_area_2d_15_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed:
		select_button(15)
		
func _process(delta: float) -> void:
	if Global.Lights == true and $ColorRect.visible == true:
		$ColorRect.visible = false
	elif Global.Lights == false and $ColorRect.visible == false:
		$ColorRect.visible = true

func check_solution():

	if $I2.visible and $I9.visible and $I11.visible:
		Global.SwitchSolved = true
		locked = true
