extends Area2D

#Suit le mouvement de la souris sur l'axe X
func _on_MoveTimer_timeout():
	var tween = get_node("Tween")
	tween.interpolate_property(self, "position",Vector2(position.x,position.y), Vector2(get_viewport().get_mouse_position().x,get_viewport().get_mouse_position().y),0.05 ,Tween.TRANS_LINEAR, Tween.EASE_IN_OUT)
	tween.start()

func _on_Player_body_entered(body):
	Global.stop_time()
	Global.reset_time()
	get_tree().change_scene("res://scenes/Jumpscare.tscn")
