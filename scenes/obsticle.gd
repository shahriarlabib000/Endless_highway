class_name ObsticleCar 
extends RigidBody3D
## An obsticle for player

@export var speed := 30

func _physics_process(delta: float) -> void:
	position.z += delta * speed

func _on_visible_on_screen_notifier_3d_screen_exited() -> void:
	queue_free()
