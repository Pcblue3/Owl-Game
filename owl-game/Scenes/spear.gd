extends Area2D
@onready var e: Label = $E


func _ready() -> void:
	if Saveload.contents_to_save.spear_collected:
		queue_free()




func _on_body_entered(body: Node2D) -> void:
	print("hit")
	e.visible = true
	Globals.can_pick_up_spear = true

func _on_body_exited(body: Node2D) -> void:
	e.visible = false
	Globals.can_pick_up_spear = false
