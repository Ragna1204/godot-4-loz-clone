extends Enemy

func _physics_process(delta: float) -> void:
	move_to_player(delta)


func _on_attack_timer_timeout() -> void:
	if position.distance_to(player.position) < 5.0:
		melee_attack_animation()


func melee_attack_animation():
	pass
