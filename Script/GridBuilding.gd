extends "res://Script/PlayContent.gd"

func _ready():
	pass

func _on_btnFarm_pressed():
	self.hideMe()
	var farm = load("res://Script/PopUpFarm.gd").new()
	farm.fs()
	pass # replace with function body
