extends Node2D

func _on_Goal_area_entered(area):
	Global.stop_time()
	get_tree().change_scene("res://scenes/WinScreen.tscn")
