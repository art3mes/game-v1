extends Node


func _on_level_1_pressed():
	get_tree().change_scene_to_file("res://scenes/level1.tscn")


func _on_level_2_pressed():
	get_tree().change_scene_to_file("res://scenes/level2.tscn")


func _on_level_3_pressed():
	get_tree().change_scene_to_file("res://scenes/level3.tscn")


func _on_quit_pressed():
	get_tree().change_scene_to_file("res://scenes/main_menu.tscn")