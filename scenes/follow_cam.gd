extends Camera3D

@export var target:Node3D
@export var offset:float = 5

func _process(_delta: float) -> void:
	if !target:
		return
	global_position.z = target.global_position.z - offset
