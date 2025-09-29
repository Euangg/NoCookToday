extends Controller

@onready var ray_cast_2d: RayCast2D = $RayCast2D

func _physics_process(_delta:float):
	parent.control_pressed_attack=true#一直攻击
	parent.control_float_x=0
	if ray_cast_2d.is_colliding():parent.control_float_x=-1
	else: pass
