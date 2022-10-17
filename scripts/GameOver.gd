extends Control

func _on_Timer_timeout():
	show()

func _on_Boo_finished():
	$Out.play()
