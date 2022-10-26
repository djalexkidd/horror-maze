extends Control

func _ready():
	$TimeValue.text = str("%0.3f" % Global.time)
	$BestValue.text = str("%0.3f" % Global.personnal_best)
	if Global.time < Global.personnal_best:
		Global.personnal_best = Global.time
		$NewRecord.show()
		save_time()

func save_time():
	var data = {
		"time" : Global.personnal_best
	}
	
	var save_file = File.new()
	save_file.open("user://pb.json", File.WRITE)
	save_file.store_line(to_json(data))
	save_file.close()

func _on_RestartButton_pressed():
	Global.reset_time()
	get_tree().change_scene("res://scenes/Menu.tscn")
