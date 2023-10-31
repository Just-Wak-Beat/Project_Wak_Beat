/// @description Insert description here
// You can write your code in this editor
if (target_xscale != -4)
{
	image_xscale += (target_xscale - image_xscale)*0.15
}

if (audio_is_playing(gomem_mashup) && speed != 0)
{
	var tmp_dir = 1;
	if (direction == 180 || speed < 0)
	{
		tmp_dir = -1
	}
	w_alpha2 += (0 - w_alpha2)*0.1
	
	if (spike_anime == 0)
	{
		w_alpha2 = 2
	}
	
	spike_anime += (tmp_dir - spike_anime)*0.35
	
	if (image_angle == 180)
	{
		spike_anime_dir = -1
	}
}


if (global.timeline_stop != 1)
{
	if (fast_movement == false)
	{
		x -= global.map_speed;
		t_x -= global.map_speed;
		t_y += global.map_speed_y;
	}

	
	w_alpha += (0 - w_alpha)*0.1


	if (warning_timer = target_time-1)
	{
		if (fast_movement == 0)
		{
			w_alpha = 10
		}
		else
		{
			w_alpha = 1
		}
		image_alpha = 1
		if (image_angle == 0)
		{
			y = global.c_h
		}
		else if (image_angle == 90)
		{
			x = global.c_w
		}
		else if (image_angle == 180)
		{
			y = global.c_y
		}
		else
		{
			x = global.c_x
		}
	}

	if (warning_timer >= target_time)
	{
		if (can_move == 0)
		{
			if (fast_movement == 1)
			{
				var tmp_xx = t_x+lengthdir_x(128,direction);
				var tmp_yy = t_y+lengthdir_y(128,direction);
				x += (tmp_xx - x)*0.33
				y += (tmp_yy - y)*0.33
				
				if (point_distance(x,y,tmp_xx,tmp_yy) <= 32)
				{
					can_move = 1
					w_alpha = 1
				}
			}
			else
			{
				x += (t_x - x)*0.1
				y += (t_y - y)*0.1
			
				if point_distance(x,y,t_x,t_y) <= 10
				{
					can_move = 1
					w_alpha = 1
				}
			}
		}
		else
		{
			if (variable_instance_exists(id,"shake_effect") && shake_effect == 1)
			{
				t_y = ystart+(sign(image_angle-90)*1+sin(shake_ef_timer/20*(1+global.map_speed*0.05)))*160
			
				x += (t_x - x)*0.35
				y += (t_y - y)*0.35
				shake_ef_timer ++;
			}
			else
			{
				if (fast_movement != 1)
				{
					speed += (t_speed - speed)*0.1
				}
				else
				{
					if (speed < 0)
					{
						speed = 0;
					}
			
					p_speed += (t_speed - p_speed)*0.35
					if (abs(p_speed-t_speed) < 0.1 && w_alpha < 0.7)
					{
						speed += (p_speed - speed)*0.1
					}
					else
					{
						x += (t_x - x)*0.35
						y += (t_y - y)*0.35
					}
				}
			}
		}
	}
	warning_timer ++
}

