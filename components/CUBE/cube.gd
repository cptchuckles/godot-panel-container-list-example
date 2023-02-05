extends Spatial


func _physics_process(delta: float) -> void:
	rotate_x(delta * 0.1)
	rotate_y(delta * 0.2)
	rotate_z(delta * 0.3)
