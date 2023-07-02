/// @description Insert description here
// You can write your code in this editor
if audio_is_playing(Yoong)
{
	x -= global.map_speed
}

image_blend = global.map_color

x += falling_hspeed
y += falling_vspeed





if global.low_graphics = false
{
	w_alpha += (-0.01 - w_alpha)*0.15
}
else
{
	w_alpha = 0
}

warning_timer ++

if warning_timer = target_time-1
{
	image_xscale = 0
	image_yscale = 0
}


if warning_timer = target_time
{
	if shake_scale > 0
	{
		view_shake(0.1,shake_scale,3,shake_dir)
	}
	w_alpha = 1
	image_alpha = 1
	scale_up_effect = 1.05
}


if warning_timer >= target_time
{
	scale_up_effect += (1 - scale_up_effect)*0.1
	if shake_movement != 0
	{
		shake_time += abs(shake_speed)
		if shake_time >= 0 && shake_time < 60
		{
			speed += (shake_movement*sign(shake_speed) - speed)*0.05*power(2,abs(abs(shake_speed) - 1)-1)
		}
	
		if shake_time >= 60
		{
			speed += (-shake_movement*sign(shake_speed) - speed)*0.05*power(2,abs(abs(shake_speed) - 1)-1)
		}
		
		if abs(falling_vspeed) > 0 || abs(falling_hspeed) > 0
		{
			x -= global.map_speed
		}
	
		if shake_time >= 118
		{
			shake_time -= 118
		}
	}
	
	if des = 0
	{
		if shake_movement = 0
		{
			t_scale += 0.001
		}
	
		image_xscale += (t_scale - image_xscale)*0.3
		image_yscale += (t_scale - image_yscale)*0.3

		if warning_timer%10 = 0 && abs((warning_timer-target_time)-des_time) < 120
		{
			w_alpha = 1
		}
	}
}

if warning_timer-target_time > des_time
{
	des = 1
	image_xscale += (-0.01 - image_xscale)*0.3
	image_yscale += (-0.01 - image_yscale)*0.3

	if image_xscale <= 0
	{
		instance_destroy()
	}
}
else
{
	if (image_alpha < 1 && warning_timer%15 == 0)
	{
		w_alpha = 1
	}
}