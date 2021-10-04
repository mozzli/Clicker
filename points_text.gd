extends KinematicBody2D

var points = 10000000
var timer_clicks = 0.00000000001

func _ready():
	pass

func _process(_delta):
	get_node("RichTextLabel").text = "points: " + str(points)
	

func update_timer(var amount):
	timer_clicks += amount
	$Timer.wait_time = 1/timer_clicks
	print(timer_clicks)
	if $Timer.paused == false:
		$Timer.start()


func _on_Timer_timeout():
	points += 1
