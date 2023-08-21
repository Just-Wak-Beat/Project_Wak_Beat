/// @description Insert description here
// You can write your code in this editor
w_alpha += (0 - w_alpha)*0.1



if (warning_timer = target_time-1)
{
	if (fast_movement == false)
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

if warning_timer >= target_time
{
	if (can_move == 0)
	{
		if point_distance(x,y,xstart,ystart) <= 10
		{
			can_move = 1
			w_alpha = 1
		}
		else
		{
			if (fast_movement == true)
			{
				var tmp_xx = xstart+lengthdir_x(64,direction);
				var tmp_yy = ystart+lengthdir_y(64,direction);
				x += (tmp_xx - x)*0.33
				y += (tmp_yy - y)*0.33
				
				if point_distance(x,y,tmp_xx,tmp_yy) <= 2
				{
					can_move = 1
					w_alpha = 1
				}
			}
			else
			{
				x += (xstart - x)*0.1
				y += (ystart - y)*0.1
			}
		}
	}
	
	if (can_move == 1)
	{
		x += (xstart - x)*0.2;
		y += (ystart - y)*0.2;
		
		if (speed < 0)
		{
			speed = 0;
		}
		if (fast_movement == true)
		{
			speed += (t_speed - speed)*0.1
		}
		else
		{
			p_speed += (t_speed - p_speed)*0.1
			if (abs(p_speed-t_speed) < 0.1)
			{
				speed = t_speed;
			}
		}
	}
}
warning_timer ++