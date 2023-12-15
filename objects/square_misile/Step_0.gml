/// @description Insert description here
// You can write your code in this editor

var tmp_scale = (sprite_get_width(sprite_index)*image_xscale)+8;
if (variable_instance_exists(id,"m_data_arg0"))
{
	if (global.timeline_stop != 1)
	{
		if (saved_speed != -4)
		{
			timer = tmp_scale;
			speed = saved_speed;
			saved_speed = -4;
		}
	}
	else
	{
		speed = 0;
	}
}










if (global.rewind > 0)
{
	instance_destroy();
}

if (global.timeline_stop != 1)
{
	direction += (image_angle - direction)*0.005
	if (first_created == 1)
	{
		x -= global.map_speed
		y += global.map_speed_y
	}
	
	if stop_create > 0
	{
		stop_create++
	}
	else
	{
		var _image_scale = 512
		if (x+_image_scale < global.c_x || x-_image_scale > global.c_w || y+_image_scale < global.c_y || y-_image_scale > global.c_h)
		{
			stop_create = 1
		}
	}


	if stop_create < 60
	{
		timer += speed;
		if (tmp_scale <= timer)
		{
			timer -= tmp_scale;
			first_created = 1;
			var laser__ = instance_create_depth(x-lengthdir_x(timer,direction),y-lengthdir_y(timer,direction),obj_player.depth-1,hitbox_9)
			laser__.target_time = 1
			laser__.des_time = des_time;
			laser__.shake_scale = shake_scale;
			laser__.shake_dir = shake_dir;
			laser__.image_xscale = image_xscale;
			laser__.image_yscale = image_yscale;
			laser__.t_scale = t_scale;
			laser__.sprite_index = sprite_index;
			laser__.image_angle = direction;
		}
	}
}

