extends Container

var hargaFarm = [100,200,300]
var hargaMarketing = [100,200,300]
var hargaFactory = [100,200,300]
var hargaResearch = [100,400,500]
var hargaWarehouse = [100,400,500]

var hargaChicken = [0,1000,2000,3000,5000]
var hargaBeef = [0, 1500,2500,4000,6000]
var type = ["Entry", "Mid", "High", "Ex"]

func _ready():
	for i in range(4) : 
		get_node("/root/Play/PopUpResearch/Container/Sausage/Center/Content/btn"+ type[i] +"R").disabled = true
	pass

func _process(delta):
	if Global.location == "Research" :
		refreshBuilding()
		upgradeButtonDisabler()
		refreshSausage()
	pass

#Building

func upgradeButtonDisabler():
	
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
#Sausage
func unlockSausage(levelRequirement,bc):
	if Global.lvlResearch >= levelRequirement :
		#BC : 1 = Chicken ; 2 = Beef
		if bc == 1 && Global.money >= hargaChicken[levelRequirement] :
			Global.sChicken[levelRequirement] = true
			#print(Global.sChicken[levelRequirement])
		elif bc == 2 && Global.money >= hargaBeef[levelRequirement] :
			Global.sBeef[levelRequirement] = true
		
	pass
	
func refreshSausage():
	get_node("/root/Play/PopUpResearch/Container/Sausage/Center/Content/lblEntryPrice").text = "$ " + str(hargaChicken[1])
	get_node("/root/Play/PopUpResearch/Container/Sausage/Center/Content/lblMidPrice").text = "$ " + str(hargaChicken[2])
	get_node("/root/Play/PopUpResearch/Container/Sausage/Center/Content/lblHighPrice").text = "$ " + str(hargaChicken[3])
	get_node("/root/Play/PopUpResearch/Container/Sausage/Center/Content/lblExPrice").text = "$ " + str(hargaChicken[4])
	
	get_node("/root/Play/PopUpResearch/Container/Sausage/Center/Content/lblEntryPrice2").text = "$ " + str(hargaBeef[1])
	get_node("/root/Play/PopUpResearch/Container/Sausage/Center/Content/lblMidPrice2").text = "$ " + str(hargaBeef[2])
	get_node("/root/Play/PopUpResearch/Container/Sausage/Center/Content/lblHighPrice2").text = "$ " + str(hargaBeef[3])
	get_node("/root/Play/PopUpResearch/Container/Sausage/Center/Content/lblExPrice2").text = "$ " + str(hargaBeef[4])
	
	
	for i in range(1,5) :
		if Global.sChicken[i] :
			get_node("/root/Play/PopUpResearch/Container/Sausage/Center/Content/btn"+ type[i-1] +"R").text = "Researched"
			get_node("/root/Play/PopUpResearch/Container/Sausage/Center/Content/btn"+ type[i-1] +"R").disabled = true
		elif !Global.sChicken[i] && i <= Global.lvlResearch :
			get_node("/root/Play/PopUpResearch/Container/Sausage/Center/Content/btn"+ type[i-1] +"R").disabled = false
		if Global.sBeef[i] :
			get_node("/root/Play/PopUpResearch/Container/Sausage/Center/Content/btn"+ type[i-1] +"R2").text = "Researched"
			get_node("/root/Play/PopUpResearch/Container/Sausage/Center/Content/btn"+ type[i-1] +"R2").disabled = true
		elif !Global.sBeef[i] && i <= Global.lvlResearch :
			get_node("/root/Play/PopUpResearch/Container/Sausage/Center/Content/btn"+ type[i-1] +"R2").disabled = false
	
	
	pass

#Chicken
	
func _on_btnEntryR_pressed():
	unlockSausage(1,1)
	pass # replace with function body


func _on_btnMidR_pressed():
	unlockSausage(2,1)
	pass # replace with function body


func _on_btnHighR_pressed():
	unlockSausage(3,1)
	pass # replace with function body


func _on_btnExR_pressed():
	unlockSausage(4,1)
	pass # replace with function body

#Beef
func _on_btnEntryR2_pressed():
	unlockSausage(1,2)
	pass # replace with function body


func _on_btnMidR2_pressed():
	unlockSausage(2,2)
	pass # replace with function body


func _on_btnHighR2_pressed():
	unlockSausage(3,2)
	pass # replace with function body


func _on_btnExR2_pressed():
	unlockSausage(4,2)
	pass # replace with function body
