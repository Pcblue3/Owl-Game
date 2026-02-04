extends StaticBody2D
var can_not_move = true

func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.is_in_group('player'):
		can_not_move = false
		body.test = -2


func _on_area_2d_body_exited(body: Node2D) -> void:
	if body.is_in_group('player'):
		can_not_move = true
		if(can_not_move):
			body.test = 0
			body.sprite_2d.flip_h = true
