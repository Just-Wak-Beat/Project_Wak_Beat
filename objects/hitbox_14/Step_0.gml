/// @description Insert description here
// You can write your code in this editor
if global.low_graphics = false
{
	w_alpha += (-0.01 - w_alpha)*0.15
}
else
{
	w_alpha = 0
}

if y > t_y && vspeed > 0
{
	y = t_y
	vspeed *= -0.3
}

if y >= t_y && abs(vspeed) < 0.01
{
	gravity = 0
	y = t_y
}
else
{
	gravity = 0.8
}

x -= global.map_speed
y += global.map_speed_y



if global.map_speed > 0 && x < global.c_x-1280*image_xscale
{
	instance_destroy()
}

if global.map_speed < 0 && x > global.c_w+1280*image_xscale
{
	instance_destroy()
}