/// @description Insert description here
// You can write your code in this editor
w_alpha += (0 - w_alpha)*0.1



if (warning_timer = target_time-1)
{
	w_alpha = 10
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
		}
		else
		{
			x += (xstart - x)*0.1
			y += (ystart - y)*0.1
		}
	}
	
	if (can_move == 1)
	{
		speed += (t_speed - speed)*0.1
	}
}
warning_timer ++