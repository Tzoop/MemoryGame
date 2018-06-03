extends Node2D

var gameManagerPacked 
var gameManagerUnpacked

func _ready():
	gameManagerPacked = preload("res://scenes/GameManager.tscn")
	gameManagerUnpacked = gameManagerPacked.instance()

func _on_StartButton_pressed():
	get_node("StartButton").visible = false
	get_node("QuitButton").visible = false
	get_node("GameName").visible = false
	get_node("Credits").visible = false
	get_node("ClickColors").visible = false
	get_node("GrayElement").visible = false
	get_node("RedElement").visible = false
	get_node("PinkElement").visible = false
	get_node("BlueElement").visible = false
	get_node("OrangeElement").visible = false
	get_node("DarkGreenElement").visible = false
	get_node("BlacKElement").visible = false
	get_node("PurpleElement").visible = false
	add_child(gameManagerUnpacked)

func _on_QuitButton_button_down():
	get_tree().quit()
