extends KinematicBody2D

var upgrade_level = 0
var cost = 100
const base_cost = 100
var important_upgrade = 1
var upgrade_amount_per_level = 10
const upgrade_cost_amount = 20
var points_node
var timer_points_upgrade = 1.0

func _ready():
	points_node = get_parent().get_node("points_text")


func _on_Button2_pressed():
	if (points_node.points>=cost):
		upgrade_level += 1
		points_node.points -= cost
		cost = int(round(((base_cost+upgrade_cost_amount)*upgrade_level)*1.1))
		get_node("Button2").text = "Upgrade 2| Cost " + str(cost)
		points_node.update_timer(timer_points_upgrade)
		points_node.upgrade_points_per_second_text()
