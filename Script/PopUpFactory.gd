extends Container

var type = ["S","Entry","Mid","High","Ex"]

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass

func nowpertarget():
	var teks = str(Global.next)+ "/" + str(Global.nextp)
	return teks

func _process(delta):
	get_node("/root/Play/PopUpFactory/Container/Label").text = nowpertarget()
	for i in range(5) :
		if !Global.sChicken[i] :
			get_node("/root/Play/PopUpFactory/Container/Center/HBox/Content/lbl" + type[i] + "").hide()
			get_node("/root/Play/PopUpFactory/Container/Center/HBox/Content/btn" + type[i] + "R3").hide()
		else :
			get_node("/root/Play/PopUpFactory/Container/Center/HBox/Content/lbl" + type[i] + "").show()
			get_node("/root/Play/PopUpFactory/Container/Center/HBox/Content/btn" + type[i] + "R3").show()
			
		if !Global.sBeef[i] :
			get_node("/root/Play/PopUpFactory/Container/Center/HBox/Content2/lbl" + type[i] + "2").hide()
			get_node("/root/Play/PopUpFactory/Container/Center/HBox/Content2/btn" + type[i] + "R4").hide()
		else :
			get_node("/root/Play/PopUpFactory/Container/Center/HBox/Content2/lbl" + type[i] + "2").show()
			get_node("/root/Play/PopUpFactory/Container/Center/HBox/Content2/btn" + type[i] + "R4").show()
		
	pass


func _on_btnSR3_pressed():
	if Global.Chicken >= 1 :
		Global.Chicken -= 1
		Global.vChicken[0] +=1
		Global.next += 1
	pass # replace with function body


func _on_btnEntryR3_pressed():
	if Global.Chicken >= 2 :
		Global.Chicken -= 2
		Global.vChicken[1] +=1
		Global.next += 1
	pass # replace with function body


func _on_btnMidR3_pressed():
	if Global.Chicken >= 3 :
		Global.Chicken -= 3
		Global.vChicken[2] +=1
		Global.next += 1
	pass # replace with function body


func _on_btnHighR3_pressed():
	if Global.Chicken >= 4 :
		Global.Chicken -= 4
		Global.vChicken[3] +=1
		Global.next += 1
	pass # replace with function body


func _on_btnExR3_pressed():
	if Global.Chicken >= 5 :
		Global.Chicken -= 5
		Global.vChicken[4] +=1
		Global.next += 1
	pass # replace with function body


func _on_btnSR4_pressed():
	if Global.Cow >= 1 :
		Global.Cow -= 1
		Global.vBeef[0] +=1
		Global.next += 1
	pass # replace with function body


func _on_btnEntryR4_pressed():
	if Global.Cow >= 2 :
		Global.Cow -= 2
		Global.vBeef[1] +=1
		Global.next += 1
	pass # replace with function body


func _on_btnMidR4_pressed():
	if Global.Cow >= 3 :
		Global.Cow -= 3
		Global.vBeef[2] +=1
		Global.next += 1
	pass # replace with function body


func _on_btnHighR4_pressed():
	if Global.Cow >= 4 :
		Global.Cow -= 4
		Global.vBeef[3] +=1
		Global.next += 1
	pass # replace with function body


func _on_btnExR4_pressed():
	if Global.Cow >= 5 :
		Global.Cow -= 5
		Global.vBeef[4] +=1
		Global.next += 1
	pass # replace with function body
