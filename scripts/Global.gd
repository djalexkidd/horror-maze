extends Node

var time = 0
var running
var personnal_best = 999.999

func _ready():
	var save_file = File.new()
	if not save_file.file_exists("user://pb.json"):
		return #Ne fait rien si le fichier n'existe pas

	save_file.open("user://pb.json", File.READ) #Ouvre le fichier
	var json_str = save_file.get_as_text()
	var game_data = JSON.parse(json_str).result
	personnal_best = game_data.time
	save_file.close() #Ferme le fichier

func _process(delta):
	if running:
		time += delta

func start_time():
	running = true

func stop_time():
	running = false

func reset_time():
	running = false
	time = 0
