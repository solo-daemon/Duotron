extends Node2D

func _process(delta):
	if Input.is_action_pressed("ui_left"):
		
		$"+veSignleft".visible=true
		$"+veSignright".visibe=false
		$"-veSignleft".visible=false
		$"-veSignright".visible=true
	elif Input.is_action_pressed("ui_right"):
		$"+veSignleft".visible=false
		$"+veSignright".visibe=true
		$"-veSignright".visible=false
		$"-veSignleft".visible=true
	else:
		$"+veSignleft".visible=false
		$"+veSignright".visibe=false
		$"-veSignleft".visible=true
		$"-veSignright".visible=true
		
		
	






