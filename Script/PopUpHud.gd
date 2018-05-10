extends Container

func _ready():
	self.setLblTop("Fae")
	pass

func setLblTop(x):
	$vboxTitle/lblTop.text = x
	pass

func setLblBottom(x):
	$vboxTitle/lblBottom.text = x
	pass