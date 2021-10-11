extends KinematicBody2D

var upgrade_level = 0
var cost = 10
var base_cost = 10
var important_upgrade = 1
var upgrade_amount_per_level = 2
const upgrade_cost_amount = 2
var points_node
var timer_points_upgrade = 0.1

func _ready():
	points_node = get_parent().get_node("points_text")

func _on_Button_pressed():
	if (points_node.points>=cost):
		upgrade_level += 1
		points_node.points -= cost
		cost = int(round(((base_cost+upgrade_cost_amount)*upgrade_level)*1.1))
		get_node("Button").text = "Upgrade 1| Cost " + str(cost)
		points_node.update_timer(timer_points_upgrade)
		points_node.upgrade_points_per_second_text()
