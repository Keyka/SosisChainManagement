extends Node

var money
var hp
var xp
var level
var date
var location

#Research
var lvlFarm = 1
var lvlMarketing = 1
var lvlFactory = 1
var lvlResearch = 1
var lvlWarehouse = 1
var sChicken = [true, false,false,false,false]
var sBeef = [true, false, false, false,false]

#Farm
var Chicken = 100
var Cow = 100
var pakanChicken = 100
var pakanCow = 100

#Marketing
var hChicken = [25,25,25,25,25]
var hBeef = [25,25,25,25,25]

#Warehouse
var vChicken = [25,25,25,25,25]
var vBeef = [25,25,25,25,25]

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here

	pass

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass
