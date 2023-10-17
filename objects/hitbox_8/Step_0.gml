/// @description Insert description here
// You can write your code in this editor


if (t_x == -4)
{
	x = t_y.x;
	y = t_y.y;
	
	image_xscale += (t_y.t_scale - image_xscale)*0.1
	image_yscale += (t_y.t_scale - image_yscale)*0.1
	
	if (audio_is_playing(lockdown))
	{
		if (global.n_progress < 2653)
		{
			image_angle += (direction - image_angle)*0.1
		}
	}
	else
	{
		image_angle += (direction - image_angle)*0.133
	}
}
else
{
	x += (t_x - x)*0.1
	y += (t_y+y_movement - y)*0.1
	
	image_xscale += (t_scale - image_xscale)*0.1
	image_yscale += (t_scale - image_yscale)*0.1
}

y_movement_timer ++

if y_movement_timer > 60
{
	y_movement_dir *= -1
	y_movement_timer = 0
}

	y_movement += y_movement_dir


if global.low_graphics = false
{
	w_alpha += (-0.01 - w_alpha)*0.15
}
else
{
	w_alpha = 0
}



if (sprite_index == spr_circle_spike)
{
	if (instance_number(hitbox_8) == 1)
	{
		if (lockdown_effect == 0 && t_scale <= 1)
		{
			t_scale = 0.5;
			lockdown_effect = 1;
		}
		t_scale += 0.0002;
		image_angle += 5/t_scale;
	}
}
