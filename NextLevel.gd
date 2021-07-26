extends Sprite

func _on_Hitbox_area_entered(area: Area2D) -> void:
	if area.is_in_group("Joe"):
		get_tree().change_scene("res://Level2.tscn")
