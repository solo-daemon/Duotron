extends Sprite

func _on_icon_hide():
	if Input.is_action_pressed("redright"):
		$icon.hide()
