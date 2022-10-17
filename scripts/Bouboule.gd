extends KinematicBody2D

var speed = 100 #Vitesse
var velocity = Vector2()
export var direction = 1

func _physics_process(delta):
	velocity.y = speed * direction
	
	velocity = move_and_slide(velocity,Vector2.UP)
	
	if is_on_floor() or is_on_ceiling():
		direction = direction * -1
