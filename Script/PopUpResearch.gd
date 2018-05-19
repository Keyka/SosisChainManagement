extends Container

var hargaFarm = [100,200,300]
var hargaMarketing = [100,200,300]
var hargaFactory = [100,200,300]
var hargaResearch = [100,400,500]
var hargaWarehouse = [100,400,500]

func _ready():

	pass

func _process(delta):
	refreshBuilding()
	
	if Global.lvlResearch == 4:
		$"/root/Play/PopUpResearch/Container/Building/Center/Content/btnResearchUpgrade".disabled = true
	else : 
		$"/root/Play/PopUpResearch/Container/Building/Center/Content/btnResearchUpgrade".disabled = false
	
	if Global.lvlResearch <= Global.lvlFarm || Global.lvlFarm == 4:
		$"/root/Play/PopUpResearch/Container/Building/Center/Content/btnFarmUpgrade".disabled = true
	else : 
		$"/root/Play/PopUpResearch/Container/Building/Center/Content/btnFarmUpgrade".disabled = false
	
	if Global.lvlResearch <= Global.lvlFactory || Global.lvlFactory == 4:
		$"/root/Play/PopUpResearch/Container/Building/Center/Content/btnFactoryUpgrade".disabled = true
	else : 
		$"/root/Play/PopUpResearch/Container/Building/Center/Content/btnFactoryUpgrade".disabled = false
	
	if Global.lvlResearch <= Global.lvlMarketing || Global.lvlMarketing == 4:
		$"/root/Play/PopUpResearch/Container/Building/Center/Content/btnMarketingUpgrade".disabled = true
	else : 
		$"/root/Play/PopUpResearch/Container/Building/Center/Content/btnMarketingUpgrade".disabled = false
	
	if Global.lvlResearch <= Global.lvlWarehouse || Global.lvlWarehouse == 4:
		$"/root/Play/PopUpResearch/Container/Building/Center/Content/btnWarehouseUpgrade".disabled = true
	else : 
		$"/root/Play/PopUpResearch/Container/Building/Center/Content/btnWarehouseUpgrade".disabled = false
	
	pass

#Building
func refreshBuilding():
	get_node("/root/Play/PopUpResearch/Container/Building/Center/Content/lblFarmLevel").text = "Lv " + str(Global.lvlFarm)
	get_node("/root/Play/PopUpResearch/Container/Building/Center/Content/lblFactoryLevel").text = "Lv " + str(Global.lvlFactory)
	get_node("/root/Play/PopUpResearch/Container/Building/Center/Content/lblMarketingLevel").text = "Lv " + str(Global.lvlMarketing)
	get_node("/root/Play/PopUpResearch/Container/Building/Center/Content/lblResearchLevel").text = "Lv " + str(Global.lvlResearch)
	get_node("/root/Play/PopUpResearch/Container/Building/Center/Content/lblWarehouseLevel").text = "Lv " + str(Global.lvlWarehouse)
	
	if Global.lvlFarm < 4 :
		get_node("/root/Play/PopUpResearch/Container/Building/Center/Content/lblFarmPrice").text = "$ " + str(hargaFarm[Global.lvlFarm-1])
	if Global.lvlFactory < 4 :
		get_node("/root/Play/PopUpResearch/Container/Building/Center/Content/lblFactoryPrice").text = "$ " + str(hargaFactory[Global.lvlFactory-1])
	if Global.lvlMarketing < 4 :
		get_node("/root/Play/PopUpResearch/Container/Building/Center/Content/lblMarketingPrice").text = "$ " + str(hargaMarketing[Global.lvlMarketing-1])
	if Global.lvlResearch < 4 :
		get_node("/root/Play/PopUpResearch/Container/Building/Center/Content/lblResearchPrice").text = "$ " + str(hargaResearch[Global.lvlResearch-1])
	if Global.lvlWarehouse < 4 :
		get_node("/root/Play/PopUpResearch/Container/Building/Center/Content/lblWarehousePrice").text = "$ " + str(hargaWarehouse[Global.lvlWarehouse-1])

func _on_btnFarmUpgrade_pressed():
	if Global.lvlResearch > Global.lvlFarm :
		if Global.money >= hargaFarm[Global.lvlFarm-1] :
			Global.money -= hargaFarm[Global.lvlFarm-1]
			Global.lvlFarm += 1
			get_node("/root/Play/BaseHud/StatusBar/" + "vboxDateMoney/lblMoney").text = "$ " + String(Global.money) 
	
	pass # replace with function body

func _on_btnFactoryUpgrade_pressed():
	if Global.lvlResearch > Global.lvlFactory :
		if Global.money >= hargaFactory[Global.lvlFactory-1] :
			Global.money -= hargaFactory[Global.lvlFactory-1]
			Global.lvlFactory += 1
			get_node("/root/Play/BaseHud/StatusBar/" + "vboxDateMoney/lblMoney").text = "$ " + String(Global.money) 
	
	pass # replace with function body

func _on_btnMarketingUpgrade_pressed():
	if Global.lvlResearch > Global.lvlMarketing :
		if Global.money >= hargaMarketing[Global.lvlMarketing-1] :
			Global.money -= hargaMarketing[Global.lvlMarketing-1]
			Global.lvlMarketing += 1
			get_node("/root/Play/BaseHud/StatusBar/" + "vboxDateMoney/lblMoney").text = "$ " + String(Global.money) 
	
	pass # replace with function body

func _on_btnWarehouseUpgrade_pressed():
	if Global.lvlResearch > Global.lvlWarehouse :
		if Global.money >= hargaWarehouse[Global.lvlWarehouse-1] :
			Global.money -= hargaWarehouse[Global.lvlWarehouse-1]
			Global.lvlWarehouse += 1
			get_node("/root/Play/BaseHud/StatusBar/" + "vboxDateMoney/lblMoney").text = "$ " + String(Global.money) 
	
	pass # replace with function body

func _on_btnResearchUpgrade_pressed():
	if Global.money >= hargaResearch[Global.lvlResearch-1] :
		Global.money -= hargaResearch[Global.lvlResearch-1]
		Global.lvlResearch += 1
		get_node("/root/Play/BaseHud/StatusBar/" + "vboxDateMoney/lblMoney").text = "$ " + String(Global.money) 
		
	pass # replace with function body

#Chicken
func _on_btnEntryR_pressed():
	pass # replace with function body


func _on_btnMidR_pressed():
	pass # replace with function body


func _on_btnHighR_pressed():
	pass # replace with function body


func _on_btnExR_pressed():
	pass # replace with function body

#Beef
func _on_btnEntryR2_pressed():
	pass # replace with function body


func _on_btnMidR2_pressed():
	pass # replace with function body


func _on_btnHighR2_pressed():
	pass # replace with function body


func _on_btnExR2_pressed():
	pass # replace with function body
