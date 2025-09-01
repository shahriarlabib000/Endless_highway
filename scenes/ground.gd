extends MeshInstance3D

@export var pos:Node3D
func _ready() -> void:
	$VisibleOnScreenNotifier3D.aabb = mesh.get_aabb()
	
func _on_visible_on_screen_notifier_3d_screen_exited() -> void:
	if !pos: return
	global_position.z = pos.global_position.z + mesh.size.y/2
