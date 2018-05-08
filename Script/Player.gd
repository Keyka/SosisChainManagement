extends Node

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

var easterEgg = 0

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	print("Started")

func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass
#cheat mode
	if easterEgg>=5:
		get_node("MainMenuContainer/btnSecret").text = "Cheat Mode"


func _on_btnQuit_pressed():
	get_tree().quit()


func _on_btnPlay_pressed():
	get_tree().change_scene("res://Scene/Playground.tscn")


func _on_btnSettings_pressed():
	get_tree().change_scene("res://Scene/Settings.tscn")

func _on_btnBack_pressed():
	get_tree().change_scene("res://Scene/Mainmenu.tscn")

func _on_btnExperimental_pressed():
	easterEgg +=1

func _on_btnSecret_pressed():
	#get_tree().change_scene("res://Scene/World.tscn")
	pass
