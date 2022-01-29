extends Node2D

var spawnPointi: Node2D
var spawnPointf :Node2D
var obstacle=preload("res://obj.tscn")
var star= preload("res://star.tscn")
func _ready():
	spawnPointi=get_node("spawnPoint1")
	spawnPointf=get_node("spawnPoint2")
	randomize()
	

func _process(delta):
	if Input.is_action_pressed("ui_left"):
		
		$"+veSignleft".visible=true
		$"+veSignright".visible=false
		$"-veSignleft".visible=false
		$"-veSignright".visible=true
	elif Input.is_action_pressed("ui_right"):
		$"+veSignleft".visible=false
		$"+veSignright".visible=true
		$"-veSignright".visible=false
		$"-veSignleft".visible=true
	else:
		$"+veSignleft".visible=false
		$"+veSignright".visible=false
		$"-veSignleft".visible=true
		$"-veSignright".visible=true
		
	
		
		
	
func _on_Timer_timeout():
	var rand_posn  =rand_range(0,1)*(spawnPointf.position-spawnPointi.position)+spawnPointi.position
	var obj=obstacle.instance()
	var staar=star.instance()
	add_child(obj)
	add_child(staar)
	obj.position=rand_posn
	staar.position=rand_posn
	


func _on_destroy_body_entered(body):
	body.queue_free()
	
