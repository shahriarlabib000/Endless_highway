extends Node3D

@export var car :Node3D
@export var road_width :float = 5
var half_road_w := road_width / 2
@export var spawnDist : float = 20
@export var probability := 200
@export var timer := 1
@onready var tscn :PackedScene = preload("res://scenes/rigid_body_3d.tscn")

func _physics_process(_delta: float) -> void:
	if !car: return
	await get_tree().create_timer(timer,true,true).timeout
	if randi_range(0,probability) == probability:
		var inst:RigidBody3D = tscn.instantiate()
		inst.position.z = car.position.z + spawnDist
		inst.position.x = randf_range(-half_road_w,half_road_w)
		add_child(inst)
