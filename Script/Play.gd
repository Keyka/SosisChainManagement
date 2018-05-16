extends Node

#var Global
var pathStatusBar = "/root/Play/BaseHud/StatusBar/"

func _ready():
	refreshStatusBar()
	pass

func refreshStatusBar():
	get_node(pathStatusBar + "vboxLevelContainer/lblLevel").text = String(Global.level)
	get_node(pathStatusBar + "vboxDateMoney/lblMoney").text = String(Global.money)
	get_node(pathStatusBar + "vboxDateMoney/lblDate").text = intDate(Global.date)
	get_node(pathStatusBar + "hboxHpXp/lblXP").text = String(Global.xp)
	get_node(pathStatusBar + "hboxHpXp/lblHP").text = String(Global.hp)

func _process(delta):
	#Cek yang tampil
	if Global.location != "BuildingGrid":
		get_node("/root/Play/PopUpBaseHud/vboxTitle/lblTop").text = Global.location
		get_node("/root/Play/BuildingGrid").hide()
		get_node("/root/Play/PopUpBaseHud").show()
	else :
		hidePopUps()
		get_node("/root/Play/BuildingGrid").show()
		
		
func hidePopUps():
	get_node("/root/Play/PopUpBaseHud/vboxTitle/lblTop").text = ""
	get_node("/root/Play/PopUpBaseHud").hide()
	get_node("/root/Play/PopUpFarm").hide()
	get_node("/root/Play/PopUpFactory").hide()
	get_node("/root/Play/PopUpMarketing").hide()
	get_node("/root/Play/PopUpWarehouse").hide()
	get_node("/root/Play/PopUpResearch").hide()
	
func intDate(d):
	var tahun = 2000
	var tanggal = d
	var bulan = 1
	var kabisat = true
	var hari = 31
	var namaBulan = ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December']
	
	while (true) :
	
		if tahun % 4 == 0 :
			kabisat = true
		else :
			kabisat = false
		
		if bulan == 2 :
			if kabisat :
					hari = 29
			else :
					hari = 28
		elif [1,3,5,7,8,10,12].has(bulan) == true :
			hari = 31
		else :
			hari = 30
			
		if d <= hari:
			tanggal = d
			break
		else :
			d = d - hari
			bulan += 1
			if bulan > 12 :
				tahun +=1
		
	return (namaBulan[bulan-1] + " " + str(tanggal).pad_zeros(2) + ", " + str(tahun))