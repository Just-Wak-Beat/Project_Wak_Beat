/// @description Insert description here
// You can write your code in this editor


w_alpha += (-0.01 - w_alpha)*0.15

warning_timer ++

if warning_timer < target_time-1
{
image_yscale = distance
}

if warning_timer = target_time-1
{
image_yscale = 0
}

if warning_timer >= target_time
{
image_yscale += ((distance+32)/64 - image_yscale)*0.5
	if des = 0
	{
	image_alpha = 1

		if image_yscale >= distance/64
		{
		view_shake(0.1,shake_scale,3,shake_dir)
		des = 1
		w_alpha = 1.1
		}
	}
}


if des > 0
{
des ++
	if des > des_time
	{
	image_xscale += (-0.01 - image_xscale)*0.15
	image_alpha += (-0.01 - image_alpha)*0.15
		if (image_alpha <= 0 || image_xscale <= 0) && w_alpha <= 0
		{
		instance_destroy()
		}
	}
}
