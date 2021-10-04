extends KinematicBody2D

var points_node
var clicker_node
var cost = 300
var points_per_click = 1

func _ready():
	points_node = get_parent().get_node("points_text")
	clicker_node = get_parent().get_node("clicker")
	
	

func _on_Button_pressed():
	if (points_node.points >= cost):
		clicker_node.click_upgrade = clicker_node.click_upgrade*2
		points_node.points -= cost
		cost = cost*3
		$Button.text= "Clicker Button Upgrade! | Cost: " + str(cost) 
