extends KinematicBody2D

var points = 1000
var timer_clicks = 0.0000000001

func _ready():
	pass

func _process(_delta):
	get_node("RichTextLabel").text = "points: " + str(floor(points))
	

func update_timer(var amount):
	timer_clicks += amount


func _on_Timer_timeout():
	points += (timer_clicks)*0.01675


func upgrade_points_per_second_text():
	$points_per_second_text.text = "points per second: " + str(timer_clicks)
