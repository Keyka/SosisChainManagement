extends "res://Script/PlayContent.gd"

var capacity = []

func _ready():
	refreshLabel()
	pass

func refreshLabel() :
	get_node("Container/gridFactory/lblPakanCow").text = str(Global.pakanCow).pad_zeros(3)
	get_node("Container/gridFactory/lblPakanChicken").text = str(Global.pakanChicken).pad_zeros(3)
	get_node("Container/gridFactory/lblCow").text = str(Global.Cow).pad_zeros(3)
	get_node("Container/gridFactory/lblChicken").text = str(Global.Chicken).pad_zeros(3)

func _process(delta):
	refreshLabel()
	pass

func _on_btnAddChicken_pressed():
	pass # replace with function body


func _on_btnAddCow_pressed():
	pass # replace with function body


func _on_btnAddPakanChicken_pressed():
	pass # replace with function body


func _on_lblAddPakanCow_pressed():
	pass # replace with function body
