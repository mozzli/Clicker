extends Node2D

var bonus_scene

func _ready():
	bonus_scene = preload("res://Bonus_text.tscn")
	

func _on_Bonus_timer_timeout():
	var instance = bonus_scene.instance()
	instance.position = Vector2(175, -100)
	add_child(instance)
