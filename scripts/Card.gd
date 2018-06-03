extends Area2D

var card_name
var card_face
var card_back
var click_enabled

func _ready():
	click_enabled = true
	card_name = "Empty"
	card_face = preload("res://sprites/dandelion-flower.png")
	card_back = preload("res://sprites/dandelion-flower.png")
	get_node("Sprite").texture = card_back
	pass

func _input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton \
	and event.button_index == BUTTON_LEFT \
	and event.is_pressed():
		self.on_click()

func on_click():
	if click_enabled:
		if get_parent().last_try_was_pair:
			get_parent().last_try_was_pair = false
			get_parent()._reset_card_name_strings_and_check_box()
		click_enabled = false
		get_node("Sprite").texture = card_face
		if (get_parent().get_node("CardOneName").text == "Card 1"):
			get_parent().get_node("CardOneName").text = card_name
			get_parent().card_one_checked_if_pairing = name
		elif (get_parent().get_node("CardOneName").text != "Card 1"):
			if (get_parent().get_node("CardTwoName").text == "Card 2"):
				get_parent().get_node("CardTwoName").text = card_name
				get_parent().card_two_checked_if_pairing = name
				get_parent()._check_if_pair()
