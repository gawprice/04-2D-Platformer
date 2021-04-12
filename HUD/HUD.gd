extends Control

var position = Vector2(0,0)

func _physics_process(_delta):
	var player = get_node_or_null("/root/Game/Player_Container/Player")
	if player != null:
		position.y = player.position.y
