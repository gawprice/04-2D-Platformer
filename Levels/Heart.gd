extends Area2D

func _on_Heart_body_entered(body):
	if Global.level == 1:
		Global.level = 2
		var _s = get_tree().change_scene("res://Levels/LevelTwo.tscn")
	
