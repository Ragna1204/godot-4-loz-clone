extends Node3D

func _process(delta: float) -> void:
	var joy_dir = Input.get_vector("pan_left", "pan_right", "pan_up", "pan_down")
	rotate_from_vector(joy_dir * 0.01)

func _input(event: InputEvent) -> void:
	if event is InputEventMouseMotion:
		rotate_from_vector(event.relative * 0.003)
		
func rotate_from_vector(v: Vector2):
	if v.length() == 0: return
	rotation.y -= v.x
