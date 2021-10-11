extends KinematicBody2D

var upgrade_level = 0
var cost = 1000
var base_cost = 1000
var important_upgrade = 1
var upgrade_amount_per_level = 50
const upgrade_cost_amount = 100
var points_node
var timer_points_upgrade = 10

func _ready():
	points_node = get_parent().get_node("points_text")


func _on_Button3_pressed():
	if (points_node.points>=cost):
		upgrade_level += 1
		points_node.points -= cost
		cost = int(round(((base_cost+upgrade_cost_amount)*upgrade_level)*1.1))
		get_node("Button3").text = "Upgrade 3| Cost " + str(cost)
		points_node.update_timer(timer_points_upgrade)
		points_node.upgrade_points_per_second_text()
