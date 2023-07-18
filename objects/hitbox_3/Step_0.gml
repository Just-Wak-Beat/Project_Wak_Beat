/// @description Insert description here
// You can write your code in this editor

if (audio_is_playing(phony) || audio_is_playing(gungsirung)) && (image_angle = 0 || image_angle = 180)
{
	x -= global.map_speed
}




if global.low_graphics = false
{
	w_alpha += (-0.01 - w_alpha)*0.15
}
else
{
	w_alpha = 0
}

warning_timer ++

if warning_timer < round(target_time-1)
{
	image_yscale = distance
	image_alpha += 0.35/(target_time-1)
	
	if (saved_xscale >= 4)
	{
		draw_reloading_anime += ((distance+32)/1280)/target_time
	}
	else
	{
		image_xscale += saved_xscale/target_time
	}
}

if warning_timer = round(target_time-1)
{
	image_yscale = draw_reloading_anime
	draw_reloading_anime = 0
}

if warning_timer >= round(target_time)
{
	image_angle += auto_spin
	image_yscale += ((distance+32)/64 - image_yscale)*0.5
	if des = 0
	{
		image_alpha = 1
		image_xscale = saved_xscale

		if image_yscale >= distance/64
		{
			if shake_scale > 0
			{
				var shake_dir_temp = shake_dir;
				if (image_angle == 0 || image_angle == 180)
				{
					shake_dir_temp = 2
				}
				else
				{
					shake_dir_temp = 1
				}
				
				
				view_shake(0.1,shake_scale,3,shake_dir_temp)
			}
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
		image_xscale += (-0.01 - image_xscale)*0.25
		image_alpha += (-0.01 - image_alpha)*0.25
		if (image_alpha <= 0 || image_xscale <= 0)
		{
			instance_destroy()
		}
	}
}
