extends Area2D

@onready var points_label = $"../../../UI/Panel/PointsLabel"
@onready var animated_sprite_2d = $AnimatedSprite2D


func _ready():
	points_label.text = "Points : " + str(GlobalScript.level_parameters.points)

func _on_body_entered(body):
	print(body.name)
	if (body.name == "CharacterBody2D" || body.name == "Character2"):
		GlobalScript.level_parameters.points = GlobalScript.level_parameters.points + 1
		points_label.text = "Points : "+ str(GlobalScript.level_parameters.points)
		
		
		animated_sprite_2d.speed_scale = 1.5
		get_node("AnimatedSprite2D").play("poof")
		await get_node("AnimatedSprite2D").animation_finished
		queue_free()
		

