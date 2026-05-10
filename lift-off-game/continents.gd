extends Node2D

func _process(delta: float) -> void:
	if Global.Lights == true and $ColorRect.visible == true:
		$ColorRect.visible = false
	elif Global.Lights == false and $ColorRect.visible == false:
		$ColorRect.visible = true
	if Global.ContinentSolved:
		$Lightened.visible = true
var correct_order = [
	"NorthAmerica",
	"Antarctica",
	"Europe",
	"Oceania"
]

var current_step = 0


func continent_clicked(continent_name):
	if continent_name == correct_order[current_step]:
		current_step += 1
		$HalfLighten.visible = true


		if current_step >= correct_order.size():

			Global.ContinentSolved = true
			$HalfLighten.visible = false
			$Lightened.visible = true
			current_step = 0

	else:

		current_step = 0
		$HalfLighten.visible = false


func _on_north_america_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed:
		continent_clicked("NorthAmerica")
func _on_antarctica_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed:

		continent_clicked("Antarctica")
func _on_europe_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed:

		continent_clicked("Europe")
func _on_oceania_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed:

		continent_clicked("Oceania")


func _on_others_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed:
		current_step = 0
		$HalfLighten.visible = false
