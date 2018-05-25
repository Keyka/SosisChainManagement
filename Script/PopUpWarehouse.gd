extends Container

var type = ["S","Entry","Mid","High","Ex"]

func _ready():
	refreshStock()
	pass

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass

func refreshStock() :
	for i in range(5) :
		get_node("/root/Play/PopUpWarehouse/Container/Center/HBox/Content/lbl" + type[i] + "Vol").text = str(Global.vChicken[0]).pad_zeros(3)
		get_node("/root/Play/PopUpWarehouse/Container/Center/HBox/Content2/lbl" + type[i] + "Vol2").text = str(Global.vBeef[0]).pad_zeros(3)
		