extends Node2D

func _on_RigidBody2D_body_entered(body):
	if body.has_method("score_point"):
		body.score_point()
		print(body.score)
		queue_free()

