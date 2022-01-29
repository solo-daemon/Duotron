extends Node2D
onready var timer="Timer"

var obstacle= preload()

func ready():
	randomize()
	
func _on_Timer_timeout():
	spawn_obstacle()

func spawn_obstacle():
	var obstacle=obstacle.instance()
	add_child(obstacle)
	#get a random number between 150 and 550
	obstacle.position.x=randi()%400+150
	
func start():
	timer.start()
func stop():
	timer.stop()

