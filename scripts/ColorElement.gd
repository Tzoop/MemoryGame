extends Area2D

var my_texture

func _ready():	#my_texture = preload("res://sprites/BackgroundGray.png")
	my_texture = get_node("Sprite").texture

func _input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton \
	and event.button_index == BUTTON_LEFT \
	and event.is_pressed():
		self.on_click()

func on_click():
	get_parent().get_node("Background").texture = my_texture

