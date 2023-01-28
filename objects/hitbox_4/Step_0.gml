/// @description Insert description here
// You can write your code in this editor

x -= global.map_speed

x += falling_hspeed
y += falling_vspeed





w_alpha += (-0.01 - w_alpha)*0.15

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
}


if warning_timer >= target_time
{
	if shake_movement != 0
	{
	shake_time++
		if shake_time >= 0 && shake_time < 60
		{
		speed += (shake_movement - speed)*0.05
		}
	
		if shake_time >= 60
		{
		speed += (-shake_movement - speed)*0.05
		}
	
		if shake_time >= 118
		{
		shake_time = 0
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