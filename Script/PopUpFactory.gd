extends Container

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass


func _on_btn700_pressed():
	Global.cur = 700
	pass # replace with function body


func _on_btn500_pressed():
	Global.cur = 500
	pass # replace with function body


func _on_btn200_pressed():
	Global.cur = 200
	pass # replace with function body


func _on_btn650_pressed():
	Global.cur = 650
	pass # replace with function body
