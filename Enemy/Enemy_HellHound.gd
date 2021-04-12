extends KinematicBody2D

export var speed = 3
export var damage = 10
var direction = -1
var velocity = Vector2.ZERO


func _physics_process(_delta):
	velocity.x += direction * speed
	move_and_slide_with_snap(velocity, Vector2.UP)
	for i in get_slide_count():
		var collision = get_slide_collision(i)
		print (collision.collider.name)
		if collision.collider.name == "Ground":
			$HellHound.flip_h = true
			velocity.x = 0
			direction *= -1
		if collision.collider.name == "Platform":
			$HellHound.flip_h = false
			velocity.x = 0
			direction *= -1
		if collision.collider.name == "Player":
			collision.collider.do_damage(damage)
