extends Node2D

func _on_Goal_area_entered(area):
	get_tree().change_scene("res://scenes/levels/Level5.tscn")
