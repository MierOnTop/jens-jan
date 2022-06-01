extends KinematicBody2D
export (int) var speed = 300
export (float) var rotation_speed = 4

var velocity = Vector2()
var rotation_dir = 0

func get_input():
	rotation_dir = 0
	velocity = Vector2()
	if Input.is_action_pressed("right2"):
		rotation_dir += 1
	if Input.is_action_pressed("left2"):
		rotation_dir -= 1
	if Input.is_action_pressed("down2"):
		velocity = Vector2(-speed, 0).rotated(rotation)
	if Input.is_action_pressed("up2"):
		velocity = Vector2(speed, 0).rotated(rotation)

func _physics_process(delta):
	get_input()
	rotation += rotation_dir * rotation_speed * delta
	velocity = move_and_slide(velocity)

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
