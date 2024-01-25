extends Area2D

@onready var animation_player = $AnimationPlayer

@onready var points_label = $"../../../UI/Panel/PointsLabel"
func _ready():
	points_label.text = "Points : " + str(GlobalScript.level_parameters.points)

func _on_body_entered(body):
	if (body.name == "CharacterBody2D"):
		queue_free()
		animation_player.play("poof")
		GlobalScript.level_parameters.points = GlobalScript.level_parameters.points + 1
		points_label.text = "Points : "+ str(GlobalScript.level_parameters.points)

