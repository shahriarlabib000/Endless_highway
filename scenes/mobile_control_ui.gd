extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	handle_btn_input(%left,&"ui_left")
	handle_btn_input(%right,&"ui_right")
	$Label.text = str(Engine.get_frames_per_second())

func handle_btn_input(btn:Button,action:StringName) -> void:
	if btn.button_pressed:
		Input.action_press(action)
	else:
		if Input.is_action_pressed(action):
			Input.action_release(action)
			get_viewport().gui_release_focus()
