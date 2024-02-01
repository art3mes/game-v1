extends CharacterBody2D

# THIS CHARACTER HAS DOUBLE JUMP

const SPEED = 400.0
const JUMP_VELOCITY = -700.0
var jump_count = 0
var jump_max = 2

var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")
@onready var sprite_2d = $Sprite2D

# Add a variable to store the facing direction.
var facing_direction = 1

func _physics_process(delta):
	if (velocity.x > 1 or velocity.x < -1):
		sprite_2d.animation = "running"
		# Update facing direction based on movement.
		facing_direction = sign(velocity.x)
	else:
		sprite_2d.animation = "default"

	# Add the gravity. FALL
	if not is_on_floor():
		velocity.y += gravity * delta
		sprite_2d.animation = "jumping"

	# Handle jump.
	if Input.is_action_just_pressed("jump") and is_on_floor() and jump_count != 0:
		jump_count = 0
		
	if Input.is_action_just_pressed("jump") and jump_count < jump_max:
		velocity.y = JUMP_VELOCITY
		jump_count += 1

	# Get the input direction and handle the movement/deceleration.
	var direction = Input.get_axis("left", "right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, 30)

	move_and_slide()

	# Update sprite flip based on facing direction.
	sprite_2d.flip_h = facing_direction < 0
