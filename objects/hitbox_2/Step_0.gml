/// @description Insert description here
// You can write your code in this editor


if ((sprite_index == spr_triangle_half || sprite_index == spr_hexagon_half) && global.play_custom_map != 1)
{
	image_xscale += 0.05
	image_yscale += 0.05
	
	if (sprite_index == spr_hexagon_half)
	{
		image_xscale += 0.02*image_xscale;
		image_yscale += 0.02*image_xscale;
	}
	
	if (image_xscale > 25)
	{
		instance_destroy();
	}
}






if (gravity == 0 && !variable_instance_exists(id,"none_map_speed"))
{
	x -= global.map_speed
	y += global.map_speed_y
}

if (global.timeline_stop != 1)
{
	if (sprite_index != spr_circle_half || global.play_custom_map == 1)
	{
		image_angle += keep_spin_angle
		if (variable_instance_exists(id,"speed_"))
		{
			speed = speed_;
			image_alpha = saved_alpha;
			if (saved_alpha < 1)
			{
				effect_projectile = 1;
			}
		}
	}
	else
	{
		speed = 50
	}
	
	if (variable_instance_exists(id,"m_data_arg6"))
	{
		des_timer++;
		if (m_data_arg6 == 1 && des_timer%4 == 0)
		{
			var effect_ = instance_create_depth(x,y,depth+5,movement_effect)
			effect_.image_xscale = 0.5/(1024/sprite_width)
			effect_.image_yscale = 0.5/(1024/sprite_width)
			effect_.image_blend = global.map_color
			effect_.sprite_index = spr_circle
			effect_.image_alpha = 1
		}
	
		if (m_data_arg3 != 0 && m_data_arg3 < des_timer)
		{
			instance_destroy()
		}
	}
}
else
{
	if (variable_instance_exists(id,"speed_"))
	{
		image_alpha = 0.35;
		if (saved_alpha < 1)
		{
			image_blend = #7da7d9;
		}
	}
}


if global.low_graphics = false
{
	w_alpha += (-0.01 - w_alpha)*0.15
	circle_w_alpha += (-0.01 - circle_w_alpha)*0.1
	circle_ef_xscale -= 0.1;
}
else
{
	w_alpha = 0;
	circle_w_alpha = 0;
}


if (audio_is_playing(promise) && sprite_index == spr_spuare_outline)
{
	timer ++
}

if (timer > 120)
{
	image_alpha += (-0.01 - image_alpha)*0.2
	if (image_alpha <= 0)
	{
		instance_destroy()
	}
}



if (global.n_progress < 1600 && audio_is_playing(lockdown) && global.map_speed_y <= 1)
{
	if (image_xscale > 0)
	{
		image_xscale -= 0.002;
		image_yscale -= 0.002;
	}
	
	if (instance_exists(hitbox_8) && point_distance(x,y,hitbox_8.x,hitbox_8.y) <= 256)
	{
		image_xscale += (0 - image_xscale)*0.1
		image_yscale += (0 - image_yscale)*0.1
		if (des == 0)
		{
			des = 1
			hitbox_8.w_alpha = 1;
			hitbox_8.image_xscale *= 1.1;
			hitbox_8.image_yscale *= 1.1;
		}
		
		if (image_xscale <= 0)
		{
			instance_destroy();
		}
	}
}

if (variable_instance_exists(id,"t_speed") && global.timeline_stop == 1)
{
	speed += (t_speed - speed)*0.1;
}

if (variable_instance_exists(id,"t_scale") && global.timeline_stop == 1)
{
	image_xscale += (t_scale - image_xscale)*0.1
	image_yscale += (t_scale - image_yscale)*0.1
	t_scale += 0.005
}


if (center_destroy == 1)
{
	if (point_distance(x,y,room_width*0.5,room_height*0.5) < 64)
	{
		instance_destroy()
	}
}










