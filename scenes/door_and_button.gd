extends Node2D
@onready var animation_player = $AnimationPlayer
@onready var button = $Button


# Called when the node enters the scene tree for the first time.
func _ready():
	animation_player.play("DoorClosed")

func _on_area_2d_body_entered(body):
	if (body.name == "CharacterBody2D"):
		animation_player.speed_scale = 0.4
		button.free()
		animation_player.play("DoorOpen")
