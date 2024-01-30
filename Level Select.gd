extends Node


func _on_level_1_pressed():
	GlobalScript.level_parameters.level = 1
	get_tree().change_scene_to_file("res://scenes/character_select.tscn")


func _on_level_2_pressed():
	GlobalScript.level_parameters.level = 2
	get_tree().change_scene_to_file("res://scenes/character_select.tscn")


func _on_level_3_pressed():
	GlobalScript.level_parameters.level = 3
	get_tree().change_scene_to_file("res://scenes/character_select.tscn")


func _on_quit_pressed():
	get_tree().change_scene_to_file("res://scenes/main_menu.tscn")
