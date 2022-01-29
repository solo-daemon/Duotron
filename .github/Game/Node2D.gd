extends Node2D

func _on_Area2D_body_entered(body):
	
	body.reduce_health()



func _on_obstacle_body_shape_entered(body_rid, body, body_shape_index, local_shape_index):
	body.reduce_health()
	print("collision")


func _on_obstacle_body_entered(body):
	print("collision")
