extends Node

var save_location := "user://SaveFile.json"

var contents_to_save: Dictionary = {
	"mask_collected": false,
	"checkpoint_hit": false,
	"spear_collected": false
}

func _ready() -> void:
	_load()

func _save():
	var file = FileAccess.open(save_location, FileAccess.WRITE)
	file.store_var(contents_to_save.duplicate()) 
	file.close()
	
func _load():
	if FileAccess.file_exists(save_location):
		var file = FileAccess.open(save_location, FileAccess.READ)
		var data = file.get_var()
		file.close()
		
		var save_data = data.duplicate()
		contents_to_save.mask_collected = save_data.mask_collected
		contents_to_save.checkpoint_hit = save_data.checkpoint_hit
		contents_to_save.spear_collected = save_data.spear_collected
