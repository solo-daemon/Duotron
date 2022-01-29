extends Node2D

func _process(delta):
	if Input.is_action_pressed("ui_left"):
		
		$Icon3.visible=false
		$Sprite.visible=true
	elif Input.is_action_pressed("ui_right"):
		$Icon3.visible=true
		$Sprite.visible=false
	else:
		
		$Icon3.visible=false
		$Sprite.visible=false
		
