extends Node

var easterEgg = 0
#var Global 
func _ready():
	print("Started")
	#Global = get_node("/root/Global")

func _process(delta):
	if easterEgg>=5:
		get_node("MainMenuContainer/btnSecret").text = "Cheat Mode"


func _on_btnQuit_pressed():
	get_tree().quit()


func _on_btnPlay_pressed():
	get_tree().change_scene("res://Scene/Play.tscn")
	Global.location = "BuildingGrid"
	Global.money = 100
	Global.hp = 100
	Global.xp = 0
	Global.level = 1
	Global.date = 1

func _on_btnSettings_pressed():
	get_tree().change_scene("res://Scene/Settings.tscn")

func _on_btnBack_pressed():
	get_tree().change_scene("res://Scene/Mainmenu.tscn")

func _on_btnExperimental_pressed():
	easterEgg +=1

func _on_btnSecret_pressed():
	if get_node("MainMenuContainer/btnSecret").text == "Cheat Mode" :
		get_tree().change_scene("res://Scene/Play.tscn")
		
		Global.money = 999999
		Global.hp = 100
		Global.xp = 0
		Global.level = 1
		Global.date = 1
		Global.location = "BuildingGrid"
	pass
