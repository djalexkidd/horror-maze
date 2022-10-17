extends Area2D

func _physics_process(delta):
	position = get_viewport().get_mouse_position() # Suit le mouvement de la souris

func _on_Player_body_entered(body):
	get_tree().change_scene("res://scenes/Jumpscare.tscn")

func _on_Goal_area_entered(area):
	print("yeah boi")
