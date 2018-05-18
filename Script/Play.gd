extends Node

#var Global
var pathStatusBar = "/root/Play/BaseHud/StatusBar/"
var secondPassed = 0
var xpDivider = 10.0
var xpDivisor = 0.0

func _ready():
	refreshStatusBar()
	pass

func _on_OneSecond_timeout():
	if Global.hp == 100 :
		xpDivisor += 1
	Global.xp = (xpDivisor/xpDivider) * 100
	print(Global.xp)
	print(xpDivider)
	print(xpDivisor)
	if Global.xp >= 100 :
		Global.level +=1
		Global.xp = 0.0
		xpDivisor = 0.0
	get_node(pathStatusBar + "hboxHpXp/lblXP").text = String(Global.xp).pad_zeros(3).pad_decimals(0) + " %"
	get_node(pathStatusBar + "vboxLevelContainer/lblLevel").text = String(Global.level)
	pass # replace with function body

func _on_OneMinutes_timeout():
	
	pass # replace with function body

func _on_OneDayIngame_timeout():
	Global.date += 1
	get_node(pathStatusBar + "vboxDateMoney/lblDate").text = intDate(Global.date)
	pass # replace with function body
	
func refreshStatusBar():
	get_node(pathStatusBar + "vboxLevelContainer/lblLevel").text = String(Global.level)
	get_node(pathStatusBar + "vboxDateMoney/lblMoney").text = String(Global.money)
	get_node(pathStatusBar + "vboxDateMoney/lblDate").text = intDate(Global.date)
	get_node(pathStatusBar + "hboxHpXp/lblXP").text = String(Global.xp).pad_zeros(3).pad_decimals(0) + " %"
	get_node(pathStatusBar + "hboxHpXp/lblHP").text = String(Global.hp).pad_zeros(3).pad_decimals(0) + " %"

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
