///@param camera_zoom
///@param shake_view
///@param view_angle_shake
///@param certain_direction (0 = all, 1 = x-axis, 2 = y-axis)
function view_shake(argument0, argument1, argument2, argument3) 
{
var zoom_scale = argument0*1.7
var shake_scale = argument1*1.8
var angle_shake_ = argument2/5
	
	global.shake_time = 0
	if shake_scale*13 < global.t_shake_x && (argument3 = 0 || argument3 = 1)
	{
	global.t_shake_x = shake_scale*10;
	}
	else
	{
	global.t_shake_x += shake_scale*4.5;
	}

	if shake_scale*13 < global.t_shake_y && (argument3 = 0 || argument3 = 2)
	{
	global.t_shake_y = shake_scale*10;
	}
	else
	{
	global.t_shake_y += shake_scale*4.5;
	}
	
	
	global.shake_x = choose(-1,1)
	global.shake_y = choose(-1,1)

		
	global.view_angle_ = choose(-1,1)*angle_shake_

	if instance_number(obj_camera) > 0
	{
	obj_camera.v_x -= zoom_scale*1.28
	obj_camera.v_y -= zoom_scale*0.72
	}
}
