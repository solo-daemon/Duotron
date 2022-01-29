extends Node2D

func _process(delta):
	if Input.is_action_pressed("ui_left"):
		
		$"left/-veSign".visible=false
		$"left/+veSignleft".visible=true
		
	elif Input.is_action_pressed("ui_right"):
		$"right/-veSign".visible=false
		$"right/+veSignright".visible=true
	else:
		$"left/+veSignleft".visible=false
		$"right/+veSignright".visibe=false
		
		
	






