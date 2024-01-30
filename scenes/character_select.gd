extends Node

func _ready():
	print("out")
func _on_player_1_pressed():
	GlobalScript.level_parameters.character = 1
	print("11")
	get_tree().change_scene_to_file("res://scenes/level"+GlobalScript.level_parameters.level +".tscn")


func _on_player_2_pressed():
	GlobalScript.level_parameters.character = 2
	get_tree().change_scene_to_file("res://scenes/level"+GlobalScript.level_parameters.level +".tscn")


func _on_player_3_pressed():
	GlobalScript.level_parameters.character = 3
	get_tree().change_scene_to_file("res://scenes/level"+GlobalScript.level_parameters.level +".tscn")


func _on_player_4_pressed():
	GlobalScript.level_parameters.character = 4
	print("4")
	#get_tree().change_scene_to_file("res://scenes/level"+GlobalScript.level_parameters.level +".tscn")


func _on_back_button_pressed():
	get_tree().change_scene_to_file("res://scenes/level_select.tscn") 


func _on_texture_button_pressed():
	print("lmao") # Replace with function body.
