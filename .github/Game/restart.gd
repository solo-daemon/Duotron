extends Node2D


func _on_Button_pressed():
	get_tree().change_scene("res://game.tscn")
	
func _physics_process(delta):
	if Input.is_action_just_pressed("restart") == true:
		get_tree().change_scene("res://game.tscn")
	 
