extends Area2D

func _on_Heart2_body_entered(body):
	if Global.level == 2:
		Global.level = 3
		var _s = get_tree().change_scene("res://Levels/LevelTwo.tscn")
