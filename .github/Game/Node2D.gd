extends Node2D

func _on_Area2D_body_entered(body):
	queue_free()
	if body.has_method("reduce_health"):
		body.reduce_health()



