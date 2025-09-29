extends Controller

var input_w:StringName
var input_s:StringName
var input_a:StringName
var input_d:StringName
var input_j:StringName

func _physics_process(_delta: float) -> void:
	parent.control_float_x=Input.get_axis(input_a,input_d)
	parent.control_pressed_jump=Input.is_action_just_pressed(input_w)
	parent.control_pressed_attack=Input.is_action_just_pressed(input_j)
	parent.control_pressed_down=Input.is_action_just_pressed(input_s)
	parent.control_released_down=Input.is_action_just_released(input_s)

func preset_player_1():
	input_w="w"
	input_s="s"
	input_a="a"
	input_d="d"
	input_j="j"

func preset_player_2():
	input_w="ui_up"
	input_s="ui_down"
	input_a="ui_left"
	input_d="ui_right"
	input_j="num_1"
