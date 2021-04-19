extends Node2D

export var spawn_location = Vector2(69,2500)
onready var Enemy_Skull = load("res://Enemy/Enemy_Skull.tscn")


func _physics_process(_delta):
	var enemy_skull = get_node_or_null("Enemy_Skull")
	if enemy_skull == null:
		enemy_skull = Enemy_Skull.instance()
		enemy_skull.position = spawn_location
		enemy_skull.name = "Enemy-Skull"
		add_child(enemy_skull)
