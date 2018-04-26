extends Node

var touch_anterior = Vector2()
var primer_touch = false

func _ready():
	set_process_input(true)
	pass

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass
func _input(event):
	if event is InputEventScreenTouch  :
		if event.pressed :
			print("fak")
			pass
			
	if event is InputEventScreenDrag :
		if !primer_touch:
			touch_anterior = event.relative
			#print(touch_anterior)
			primer_touch = true
		else:
			var result = event.relative*3 - touch_anterior
			get_tree().get_nodes_in_group("camera")[0].position = get_tree().get_nodes_in_group("camera")[0].position + result
			#$CameraDrag.position = $CameraDrag.position + result
			primer_touch = false
		get_tree().set_input_as_handled()