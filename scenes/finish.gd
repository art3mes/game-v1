extends Area2D
@export var target_level : PackedScene
@onready var targetFile = ""
func _on_body_entered(body):
	if (body.name == "CharacterBody2D"):
		#print(get_tree().get_current_scene().get_name())
		#get_tree().change_scene_to_packed(target_level)
		var currentScene = get_tree().get_current_scene().get_name().right(1)
		targetFile = "res://scenes/level"+str(int(currentScene)+1)+".tscn"
		if FileAccess.file_exists(targetFile):
			get_tree().change_scene_to_file(targetFile)
		else:
			get_tree().change_scene_to_file("res://scenes/main_menu.tscn")
		
