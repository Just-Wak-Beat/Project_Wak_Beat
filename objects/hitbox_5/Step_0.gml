/// @description Insert description here
// You can write your code in this editor


if (global.timeline_stop != 1)
{
	image_xscale += (t_scale - image_xscale)*0.2
	image_yscale += (t_scale - image_yscale)*0.2


	if t_x != -4
	{
		x += (t_x - x)*0.15
		y += (t_y - y)*0.15
	}


	
	if global.low_graphics = false
	{
		w_alpha += (-0.01 - w_alpha)*0.15
	}
	else
	{
		w_alpha = 0
	}
	image_angle += 15

	warning_timer ++
	
	if (warning_timer == target_time)
	{
		if (target_time == 1)
		{
			x = t_x;
			y = t_y;
		}
		
		
		var _ef = instance_create_depth(x,y,depth+2,explosion_effect)
		_ef.image_xscale = 1
		_ef.image_yscale = 1
		_ef.t_scale = 2
		_ef.image_blend = (get_dis_color(global.background_color,c_white) < 7) ? c_black : c_white;
		
		if (global.flash_effect_setting == -1)
		{
			global.w_alpha = 0.4;
		}
		
		view_shake(0.1,shake_scale,3,shake_dir)
		w_alpha = 0.3
		if (global.n_music_name == "wakrio" && global.n_progress >= 2930)
		{
			for(var i = 0; i < 360; i += 30-(1-global.t_selected_difficulty)*15)
			{
				var attack_ef = instance_create_depth(x,y,depth+1,hitbox_6)
				attack_ef.direction = i
				attack_ef.speed = 20
				attack_ef.keep_spin_angle = 2
				attack_ef.image_xscale = 0.25*t_scale
				attack_ef.image_yscale = 0.25*t_scale
				attack_ef.w_alpha = 10
			}
		}
		else
		{
			if (global.n_music_name == "isedolhyang")
			{
				for(var i = 0; i < 360; i += 20)
				{
					var attack_ef = instance_create_depth(x,y,depth+1,hitbox_6)
					attack_ef.direction = i
					attack_ef.speed = 20
					attack_ef.keep_spin_angle = 2
					attack_ef.image_xscale = 0.25*t_scale
					attack_ef.image_yscale = 0.25*t_scale
					attack_ef.w_alpha = 10
				}
			}
			else
			{
				for(var i = 0; i < 360; i += 20-(1-global.t_selected_difficulty)*10)
				{
					var attack_ef = instance_create_depth(x,y,depth+1,hitbox_6);
					attack_ef.direction = i;
					attack_ef.speed = 20;
					attack_ef.keep_spin_angle = 2;
					attack_ef.image_xscale = 0.25*t_scale;
					attack_ef.image_yscale = 0.25*t_scale;
					attack_ef.w_alpha = 10;
				}
			}
		}
		instance_destroy();
	}

	if (warning_timer%10 == 0 && abs(warning_timer - target_time) < 120)
	{
		w_alpha = 1;
	}
}



