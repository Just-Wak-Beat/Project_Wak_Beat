/// @description Insert description here
// You can write your code in this editor


var xx = camera_get_view_x(view_camera[0])
var yy = camera_get_view_y(view_camera[0])

var xx_w = camera_get_view_width(view_camera[0])
var yy_h = camera_get_view_height(view_camera[0])

if x < xx+16
{
	if (once_in >= 120)
	{
		x = xx+16
	}
	else
	{
		once_in = 1
	}
}

if x > xx+xx_w-16
{
	if (once_in >= 120)
	{
		x = xx+xx_w-16
	}
	else
	{
		once_in = 1
	}
}

if y > yy+yy_h-16
{
	if (once_in >= 120)
	{
		y = yy+yy_h-16
	}
	else
	{
		once_in = 1
	}
}

if y < yy+16
{
	if (once_in >= 120)
	{
		y = yy+16
	}
	else
	{
		once_in = 1
	}
}



if (once_in > 0)
{
	once_in++
}