extends Node
@onready var points_label = $"../UI/Panel/PointsLabel"

var points = 0

func set_clicks(new_points_amount : int):
	points = new_points_amount
	points_label.text = "Points : "+ str(points)

func add_points():
	#points += 1
	##print(points)
	#points_label.text = "Points : "+ str(points)
	set_clicks(points + 1)
