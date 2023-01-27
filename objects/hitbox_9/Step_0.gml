/// @description Insert description here
// You can write your code in this editor

x -= global.map_speed



w_alpha += (-0.01 - w_alpha)*0.2

warning_timer ++

if warning_timer = target_time-1
{
image_xscale = 0
image_yscale = 0
}


if warning_timer = target_time
{
w_alpha = 1
image_alpha = 1
}


if warning_timer >= target_time && des = 0
{
image_xscale += (t_scale - image_xscale)*0.3
image_yscale += (t_scale - image_yscale)*0.3
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