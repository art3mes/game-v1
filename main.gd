extends Node2D




func _on_quit_pressed():
	get_tree().quit() # quit the game "tree"


func _on_play_pressed():
	get_tree().change_scene_to_file("res://world.tscn") #change the main scene from main to world
