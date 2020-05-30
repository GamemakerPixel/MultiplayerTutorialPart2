extends KinematicBody2D

const SPEED = 350

var is_master = false

func initialize(id):
	name = str(id)
	if id == Net.net_id:
		is_master = true
	else:
		modulate = Color8(255, 0, 0, 255)
	#print("Player name is " + name)

func _physics_process(delta):
	if is_master:
		var velocity = Vector2()
		if Input.is_action_pressed("ui_right"):
			velocity.x = SPEED
		elif Input.is_action_pressed("ui_left"):
			velocity.x = -SPEED
		else:
			velocity.x = 0
		if Input.is_action_pressed("ui_down"):
			velocity.y = SPEED
		elif Input.is_action_pressed("ui_up"):
			velocity.y = -SPEED
		else:
			velocity.y = 0
		move_and_slide(velocity)
		rpc_unreliable("update_position", position)

remote func update_position(pos):
	position = pos
