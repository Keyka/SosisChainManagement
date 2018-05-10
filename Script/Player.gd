extends Node

var easterEgg = 0

func _ready():
	print("Started")

func _process(delta):
	if easterEgg>=5:
		get_node("MainMenuContainer/btnSecret").text = "Cheat Mode"


func _on_btnQuit_pressed():
	get_tree().quit()


func _on_btnPlay_pressed():
	get_tree().change_scene("res://Scene/Play.tscn")


func _on_btnSettings_pressed():
	get_tree().change_scene("res://Scene/Settings.tscn")

func _on_btnBack_pressed():
	get_tree().change_scene("res://Scene/Mainmenu.tscn")

func _on_btnExperimental_pressed():
	easterEgg +=1

func _on_btnSecret_pressed():
	#get_tree().change_scene("res://Scene/World.tscn")
	pass
