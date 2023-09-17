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
		event_user(0)
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
		event_user(0)
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
		event_user(0)
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
		event_user(0)
	}
	else
	{
		once_in = 1
	}
}


speed += (t_speed - speed)*0.07

if (once_in > 0)
{
	once_in += 2;
}








image_blend = global.map_color;
if (gravity == 0)
{
	x -= global.map_speed;
	y += global.map_speed_y;
}


image_angle += keep_spin_angle;
if global.low_graphics = false
{
	w_alpha += (-0.01 - w_alpha)*0.15
}
else
{
	w_alpha = 0
}


timer ++
if (timer%5 == 0)
{
	var effect_ = instance_create_depth(x+irandom_range(-32,32),y+irandom_range(-32,32),depth+5,movement_effect)
	effect_.image_xscale = 0.5/(1024/sprite_width)
	effect_.image_yscale = 0.5/(1024/sprite_width)
	effect_.direction = direction+180;
	effect_.speed = 24
	effect_.image_blend = global.map_color
	effect_.sprite_index = spr_circle
	effect_.image_alpha = 2
}