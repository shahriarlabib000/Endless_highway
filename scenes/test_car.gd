extends Node3D

@export var speed:float = 50
@export var turn_speed:float = 5
@export_range(0,60,1,"°") var rot_angle_deg := 30
func _physics_process(delta: float) -> void:
	position.z += delta * speed
	if Input.is_action_pressed("ui_right"):
		position.x -= delta * turn_speed
		rotation_degrees.y = -rot_angle_deg
	elif Input.is_action_pressed("ui_left"):
		position.x += delta * turn_speed
		rotation_degrees.y = rot_angle_deg
	else:
		if rotation.y != 0:
			rotation.y = 0
	if $ray.is_colliding():
		printerr("Owari da")
