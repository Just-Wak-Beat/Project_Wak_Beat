/// @description Insert description here
// You can write your code in this editor

if (global.automatic_camera_movement == 0)
{
	auto_c_move_timer = 0;
	auto_c_move_timer2 = 0;
	global.auto_camera_move_xx += (0 - global.auto_camera_move_xx)*0.05
	global.auto_camera_move_yy += (0 - global.auto_camera_move_yy)*0.05
}
else
{
	auto_c_move_timer += 0.02;
	auto_c_move_timer2 += 0.01;
	if (global.automatic_camera_movement == 1)
	{
		global.auto_camera_move_xx = sin(auto_c_move_timer2);
	}
	else if (global.automatic_camera_movement == 2)
	{
		global.auto_camera_move_yy = sin(auto_c_move_timer);
	}
	else if (global.automatic_camera_movement == 3)
	{
		global.auto_camera_move_xx = sin(auto_c_move_timer2);
		global.auto_camera_move_yy = sin(auto_c_move_timer);
	}
}


depth = 999999

if (global.show_rank > 0)
{
	x += (obj_player.x - x)*0.22
	y += (obj_player.y - y)*0.22
	
	if (global.show_rank == 1)
	{
		v_x += (3584*0.7 - v_x)*0.1
		v_y += (2016*0.7 - v_y)*0.1
	}
	else
	{
		v_x += (tv_x - v_x)*0.3
		v_y += (tv_y - v_y)*0.3
	}
}
else
{
	var auto_c_move_xx_scale = global.auto_camera_move_xx*(v_x/50);
	var auto_c_move_yy_scale = global.auto_camera_move_yy*(v_y/50);
	if (global.camera_target_x == -4)
	{
		x += (room_width*0.5+auto_c_move_xx_scale - x)*0.15;
		y += (room_height*0.5+auto_c_move_yy_scale - y)*0.15;
	}
	else
	{
		x += (global.camera_target_x+auto_c_move_xx_scale - x)*0.3;
		y += (global.camera_target_y+auto_c_move_yy_scale - y)*0.3;
	}
	v_x += (tv_x - v_x)*0.1
	v_y += (tv_y - v_y)*0.1
}

if (global.paused == 0)
{
	global.n_camera_zoom += global.camera_slow_zoom

	tv_x = 3584*global.n_camera_zoom
	tv_y = 2016*global.n_camera_zoom


	x = floor(x)
	y = floor(y)

	global.view_angle_ += (0 - global.view_angle_)*0.1



	var view_zoom_ratio = (instance_exists(obj_player) && obj_player.image_xscale > 0) ? 0.95 : 1;
	if (v_x > 3584*0.4)
	{
		camera_set_view_size(view_camera[0],floor(v_x)*view_zoom_ratio,floor(v_y)*view_zoom_ratio);
	}
	else
	{
		v_x = 3584*0.4
		camera_set_view_size(view_camera[0],floor(3584*0.4)*view_zoom_ratio,floor(2016*0.4)*view_zoom_ratio);
	}

	if (global.t_shake_x <= 0.01)
	{
		global.t_shake_x = 0
	}
	
	if (global.t_shake_y <= 0.01)
	{
		global.t_shake_y = 0
	}
	global.t_shake_x += (0 - global.t_shake_x)*0.1
	global.t_shake_y += (0 - global.t_shake_y)*0.1
	global.real_shake_x += (global.t_shake_x*global.shake_x - global.real_shake_x)*0.1
	global.real_shake_y += (global.t_shake_y*global.shake_y - global.real_shake_y)*0.1
	global.shake_time ++

		if (global.shake_time > 1)
		{
			global.shake_x = -global.shake_x
			global.shake_y = -global.shake_y
			global.shake_time = 0
		}


		if (global.sync_setting_alpha <= 0.01)
		{
			x += global.real_shake_x
			y += global.real_shake_y
			camera_set_view_angle(view_camera[0],global.view_angle_)
		}
		else
		{
			camera_set_view_angle(view_camera[0],0)
		}
	
	/*if (global.blackout_alpha > 0 && surface_exists(code.surf_screen))
	{
		surface_copy(code.surf_screen,0,0,application_surface)
	}*/
	
	global.converted_view_ratio = (v_x/3584)*view_zoom_ratio;
}