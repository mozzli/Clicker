extends Timer

var minimum_time = 50
var maximum_time = 300

func _ready():
	get_random_time()
	
func get_random_time():
	wait_time = rand_range(minimum_time, maximum_time)
