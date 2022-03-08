extends KinematicBody2D

var vertical_speed = 10
var bulletSource = preload ("res://Bullet/Bullet.tscn")
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	set_process(true)
	set_physics_process(true)
	
func _physics_process(delta):
	if Input.is_action_pressed("ui_up"):
		move_and_collide(Vector2(vertical_speed * delta, -10))
	if Input.is_action_pressed("ui_down"):
		move_and_collide(Vector2(vertical_speed * delta, 10))
	if Input.is_action_pressed("fire"):
		var bulletInstance = bulletSource.instance()
		bulletInstance.position = Vector2(position.x, position.y-20)
		get_tree().get_root().add_child(bulletInstance)
	if Input.is_action_just_pressed("ui_left"):
		var bulletInstance = bulletSource.instance()
		bulletInstance.position = Vector2(position.x, position.y-20)
		get_tree().get_root().add_child(bulletInstance)

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
