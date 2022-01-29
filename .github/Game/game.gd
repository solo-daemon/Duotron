extends Node2D

func _process(delta):
	if Input.is_action_pressed("ui_left"):
		
		$"left/+veSignleft".visible=true
		$"right/+veSignright".visibe=false
		$"left/-veSign".visible=false
		$"right/-veSign".visible=true
	elif Input.is_action_pressed("ui_right"):
		$"left/+veSignleft".visible=false
		$"right/+veSignright".visibe=true
		$"left/-veSign".visible=true
		$"right/-veSign".visible=false
	else:
		$"left/+veSignleft".visible=false
		$"right/+veSignright".visibe=false
		$"left/-veSign".visible=true
		$"right/-veSign".visible=true
		
		
	






