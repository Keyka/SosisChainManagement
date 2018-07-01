extends Container

var type = ["S","Entry","Mid","High","Ex"]
var alphaArray = [[0.1,0],[0.2,0],[0.3,0],[0.4,0],[0.5,0],[0.6,0],[0.7,0],[0.8,0],[0.9,0]]

func _ready():
	
	refreshPrice()
	pass

func refreshPrice() :
	for i in range(5) :
		get_node("/root/Play/PopUpMarketing/Container/Center/HBox/Content/lbl" + type[i] + "Price").text = "$ " + str(Global.hChicken[i])
		get_node("/root/Play/PopUpMarketing/Container/Center/HBox/Content2/lbl" + type[i] + "Price2").text = "$ " + str(Global.hBeef[i])
		

func _on_Reforecast_timeout():
	#Single Expo Smoo
	Global.curp = Global.nextp
	Global.cur = Global.next
	Global.nextp = SES(Global.alpha)
	pass # replace with function body

func _on_Realpha_timeout():
	#mengisi error
	print("looping pengisian error")
	for i in range(alphaArray.size()):
		alphaArray[i][1] = SESerror(SES(alphaArray[i][0]))
		print("Alpha " + str(alphaArray[i][0]) + " : " + str(alphaArray[i][1]) )
	#mencari error terendah
	var min_val = 0
	for i in range(alphaArray.size()):
		min_val = min(min_val, alphaArray[i][1])
	#mencari alpha
	var alp = alphaArray.find(min_val)
	Global.alpha = alphaArray[alp][0]
	print(Global.alpha)
	pass # replace with function body
	
func SESerror(prediksi):
	var er = abs((Global.next - prediksi) / Global.next / 100)
	return er

func SES(alpha):
	var hasil = (alpha * Global.cur) + ( 1 - alpha ) * Global.curp
	print("SES : " + str(hasil))
	return hasil

func _process(delta):
	get_node("Container/Center2/lblTarget").text = "Forecast : " + str(Global.nextp).pad_decimals(0)
	for i in range(5) :
		if !Global.sChicken[i] :
			get_node("/root/Play/PopUpMarketing/Container/Center/HBox/Content/lbl" + type[i] + "").hide()
			get_node("/root/Play/PopUpMarketing/Container/Center/HBox/Content/lbl" + type[i] + "Price").hide()
			get_node("/root/Play/PopUpMarketing/Container/Center/HBox/Content/btn" + type[i] + "R").hide()
			get_node("/root/Play/PopUpMarketing/Container/Center/HBox/Content/btn" + type[i] + "R3").hide()
		else :
			get_node("/root/Play/PopUpMarketing/Container/Center/HBox/Content/lbl" + type[i] + "").show()
			get_node("/root/Play/PopUpMarketing/Container/Center/HBox/Content/lbl" + type[i] + "Price").show()
			get_node("/root/Play/PopUpMarketing/Container/Center/HBox/Content/btn" + type[i] + "R").show()
			get_node("/root/Play/PopUpMarketing/Container/Center/HBox/Content/btn" + type[i] + "R3").show()
			
		if !Global.sBeef[i] :
			get_node("/root/Play/PopUpMarketing/Container/Center/HBox/Content2/lbl" + type[i] + "2").hide()
			get_node("/root/Play/PopUpMarketing/Container/Center/HBox/Content2/lbl" + type[i] + "Price2").hide()
			get_node("/root/Play/PopUpMarketing/Container/Center/HBox/Content2/btn" + type[i] + "R2").hide()
			get_node("/root/Play/PopUpMarketing/Container/Center/HBox/Content2/btn" + type[i] + "R4").hide()
		else :
			get_node("/root/Play/PopUpMarketing/Container/Center/HBox/Content2/lbl" + type[i] + "2").show()
			get_node("/root/Play/PopUpMarketing/Container/Center/HBox/Content2/lbl" + type[i] + "Price2").show()
			get_node("/root/Play/PopUpMarketing/Container/Center/HBox/Content2/btn" + type[i] + "R2").show()
			get_node("/root/Play/PopUpMarketing/Container/Center/HBox/Content2/btn" + type[i] + "R4").show()
		
	pass

func plus(idx,bc):
	if bc == 1 :
		Global.hChicken[idx] += 1
		get_node("/root/Play/PopUpMarketing/Container/Center/HBox/Content/lbl" + type[idx] + "Price").text = "$ " + str(Global.hChicken[idx])
	else :
		Global.hBeef[idx] += 1
		get_node("/root/Play/PopUpMarketing/Container/Center/HBox/Content2/lbl" + type[idx] + "Price2").text = "$ " + str(Global.hBeef[idx])

func minus(idx,bc):
	if bc == 1 :
		Global.hChicken[idx] -= 1
		get_node("/root/Play/PopUpMarketing/Container/Center/HBox/Content/lbl" + type[idx] + "Price").text = "$ " + str(Global.hChicken[idx])
	else :
		Global.hBeef[idx] -= 1
		get_node("/root/Play/PopUpMarketing/Container/Center/HBox/Content2/lbl" + type[idx] + "Price2").text = "$ " + str(Global.hBeef[idx])

func _on_btnSR_pressed():
	minus(0,1)
	pass # replace with function body


func _on_btnSR3_pressed():
	plus(0,1)
	pass # replace with function body


func _on_btnEntryR_pressed():
	minus(1,1)
	pass # replace with function body


func _on_btnEntryR3_pressed():
	plus(1,1)
	pass # replace with function body


func _on_btnMidR_pressed():
	minus(2,1)
	pass # replace with function body


func _on_btnMidR3_pressed():
	plus(2,1)
	pass # replace with function body


func _on_btnHighR_pressed():
	minus(3,1)
	pass # replace with function body


func _on_btnHighR3_pressed():
	plus(3,1)
	pass # replace with function body


func _on_btnExR_pressed():
	minus(4,1)
	pass # replace with function body


func _on_btnExR3_pressed():
	plus(4,1)
	pass # replace with function body


func _on_btnSR2_pressed():
	minus(0,2)
	pass # replace with function body


func _on_btnSR4_pressed():
	plus(0,2)
	pass # replace with function body


func _on_btnEntryR2_pressed():
	minus(1,2)
	pass # replace with function body


func _on_btnEntryR4_pressed():
	plus(1,2)
	pass # replace with function body


func _on_btnMidR2_pressed():
	minus(2,2)
	pass # replace with function body


func _on_btnMidR4_pressed():
	plus(2,2)
	pass # replace with function body


func _on_btnHighR2_pressed():
	minus(3,2)
	pass # replace with function body


func _on_btnHighR4_pressed():
	plus(3,2)
	pass # replace with function body


func _on_btnExR2_pressed():
	minus(4,2)
	pass # replace with function body


func _on_btnExR4_pressed():
	plus(4,2)
	pass # replace with function body

