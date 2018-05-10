extends "res://Script/PopUp.gd"

func _ready():
	pass

func _process(delta):
	if $".".is_visible_in_tree():
		self.popUpHud.setLblTop("Farm")
	pass
	
