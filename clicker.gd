extends KinematicBody2D

var click_upgrade = 1 
var click_bonus = 1
var points_text = preload("res://Clicker_points.tscn")

func _on_Button_pressed():
	get_parent().get_node("points_text").points += 1*click_upgrade*click_bonus
	var instance = points_text.instance(click_bonus)
	instance.new_text = "+" + str(click_upgrade)
	add_child(instance)

func _on_Bonus_timer_timeout():
	$Bonus_end_timer.start()
	click_bonus = 50

func _on_Bonus_end_timer_timeout():
	$Bonus_timer.get_random_time()
	click_bonus = 1
