extends "res://Script/PlayContent.gd"

func _ready():
	pass

func _on_btnFarm_pressed():
	get_node("/root/Play").get_node("PopUpFarm").show()
	#get_node("/root/Play/BuildingGrid").hide()
	Global.location = "Farm"
	pass # replace with function body


func _on_btnFactory_pressed():
	get_node("/root/Play").get_node("PopUpFactory").show()
	#get_node("/root/Play/BuildingGrid").hide()
	Global.location = "Factory"
	pass # replace with function body


func _on_btnMarketing_pressed():
	get_node("/root/Play").get_node("PopUpMarketing").show()
	#get_node("/root/Play/BuildingGrid").hide()
	Global.location = "Marketing"
	pass # replace with function body


func _on_btnWarehouse_pressed():
	get_node("/root/Play").get_node("PopUpFWarehouse").show()
	#get_node("/root/Play/BuildingGrid").hide()
	Global.location = "Warehouse"
	pass # replace with function body


func _on_btnResearch_pressed():
	get_node("/root/Play").get_node("PopUpResearch").show()
	#get_node("/root/Play/BuildingGrid").hide()
	Global.location = "Research"
	pass # replace with function body
