extends Sprite


func _on_Icon_hide():
	if Input.is_action_pressed("redright"):
		$Icon.hide()
