extends Control

func _on_StartButton_pressed():
	get_tree().change_scene("res://scenes/levels/Level1.tscn")

#Active/Désactive le plein écran
func _on_FullScreenButton_pressed():
	if OS.window_fullscreen:
		OS.window_fullscreen = false
	else:
		OS.window_fullscreen = true
