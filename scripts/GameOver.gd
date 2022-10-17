extends Control

func _on_Timer_timeout():
	show()

func _on_Boo_finished():
	$Out.play()

func _on_RestartButton_pressed():
	get_tree().change_scene("res://scenes/Menu.tscn")

func _on_QuitButton_pressed():
	get_tree().quit()
