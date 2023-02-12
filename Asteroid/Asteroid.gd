extends KinematicBody2D
var velocity = Vector2.ZERO
var initial_speed =2.0 


func _ready():
	velocity = Vector2(0,initial_speed*randf()).rotated(PI*2*randf())
	
func _physics_process(delta):
	position = position + velocity
	velocity.x=wrapf(position.x,0,1024)
	velocity.y=wrapf(position.y,0,600)
