extends Node2D

const SPEED = 60
var direction = 1

@onready var raycastleft: RayCast2D = $raycastleft
@onready var raycasright: RayCast2D = $raycasright
@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D


func _process(delta: float) -> void:
	if raycasright.is_colliding():
		direction = -1
		animated_sprite_2d.flip_h = true
		
	if raycastleft.is_colliding():
		direction = 1
		animated_sprite_2d.flip_h = false
	position.x += direction * SPEED * delta
