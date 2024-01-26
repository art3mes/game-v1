extends Area2D

@onready var points_label = $"../../../UI/Panel/PointsLabel"
@onready var animated_sprite_2d = $AnimatedSprite2D


func _ready():
	points_label.text = "Points : " + str(GlobalScript.level_parameters.points)

func _on_body_entered(body):
	if (body.name == "CharacterBody2D"):
		#animated_sprite_2d.animadddtion("poof")
		queue_free()
		GlobalScript.level_parameters.points = GlobalScript.level_parameters.points + 1
		points_label.text = "Points : "+ str(GlobalScript.level_parameters.points)

