extends KinematicBody2D

var speed=15
var hel=100
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
	print("hel")
	if(hel<=0):
		queue_free()
	
		
