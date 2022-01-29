extends KinematicBody2D

var speed=15
var hel=100
var score=0
var velocity:Vector2=Vector2()
func _physics_process(delta):
	if Input.is_action_pressed("ui_right"):
		self.position.x-=speed
	elif Input.is_action_pressed("ui_left"):
		self.position.x+=speed	
	else:
		velocity.x=0
	move_and_collide(velocity)
	
func reduce_health():
	hel-=100
	if(hel<=0):
		Gamestate.score=score
		queue_free()
		get_tree().change_scene("res://restart.tscn")
func score_point():
	$AudioStreamPlayer.play()
	score+=1
	get_parent().get_node("Label").text="Score: \n    " +str(score)

		
