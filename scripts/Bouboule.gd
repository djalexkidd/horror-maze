extends KinematicBody2D

var speed = 100 #Vitesse
var velocity = Vector2()
export var directiony = 1
export var directionx = 0

func _physics_process(delta):
	velocity.y = speed * directiony
	velocity.x = speed * directionx
	
	velocity = move_and_slide(velocity,Vector2.UP)
	
	if is_on_floor() or is_on_ceiling() or is_on_wall():
		directiony = directiony * -1
		directionx = directionx * -1
