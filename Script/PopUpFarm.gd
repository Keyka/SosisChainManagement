extends Container

var capacity = [100,400,700,999]
var hargaChicken = 100
var hargaCow = 200
var hargaPakanChicken = 5
var hargaPakanCow = 10

func _ready():
	pass

func refreshLabel() :
	get_node("Container/gridFactory/lblPakanCow").text = str(Global.pakanCow).pad_zeros(3)
	get_node("Container/gridFactory/lblPakanChicken").text = str(Global.pakanChicken).pad_zeros(3)
	get_node("Container/gridFactory/lblCow").text = str(Global.Cow).pad_zeros(3)
	get_node("Container/gridFactory/lblChicken").text = str(Global.Chicken).pad_zeros(3)

func _process(delta):
	if Global.location == "Farm" :
		refreshLabel()
	pass

func _on_btnAddChicken_pressed():
	if Global.Chicken < capacity[Global.lvlFarm-1] && Global.money >= hargaChicken :
		Global.Chicken += 1
		Global.money -= hargaChicken
		get_node("/root/Play/BaseHud/StatusBar/" + "vboxDateMoney/lblMoney").text = "$ " + String(Global.money) 
	pass # replace with function body


func _on_btnAddCow_pressed():
	if Global.Cow < capacity[Global.lvlFarm-1] && Global.money >= hargaCow :
		Global.Cow += 1
		Global.money -= hargaCow
		get_node("/root/Play/BaseHud/StatusBar/" + "vboxDateMoney/lblMoney").text = "$ " + String(Global.money) 
	pass # replace with function body


func _on_btnAddPakanChicken_pressed():
	if Global.pakanChicken < capacity[Global.lvlFarm-1] && Global.money >= hargaPakanChicken :
		Global.pakanChicken += 1
		Global.money -= hargaPakanChicken
		get_node("/root/Play/BaseHud/StatusBar/" + "vboxDateMoney/lblMoney").text = "$ " + String(Global.money) 
	pass # replace with function body


func _on_lblAddPakanCow_pressed():
	if Global.pakanCow < capacity[Global.lvlFarm-1] && Global.money >= hargaPakanCow :
		Global.pakanCow += 1
		Global.money -= hargaPakanCow
		get_node("/root/Play/BaseHud/StatusBar/" + "vboxDateMoney/lblMoney").text = "$ " + String(Global.money) 
	pass # replace with function body
