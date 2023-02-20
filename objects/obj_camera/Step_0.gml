/// @description Insert description here
// You can write your code in this editor

depth = 999999


x += (room_width*0.5 - x)*0.15
y += (room_height*0.5 - y)*0.15

x = floor(x)
y = floor(y)

global.view_angle_ += (0 - global.view_angle_)*0.1
camera_set_view_angle(view_camera[0],global.view_angle_)

v_x += (3584 - v_x)*0.1
v_y += (2016 - v_y)*0.1
if v_x > 3584*0.4
{
camera_set_view_size(view_camera[0],floor(v_x),floor(v_y));
}
else
{
camera_set_view_size(view_camera[0],floor(3584*0.4),floor(2016*0.4));
}

if global.t_shake_x <= 0.01
{
global.t_shake_x = 0
}
	
if global.t_shake_y <= 0.01
{
global.t_shake_y = 0
}
global.t_shake_x += (0 - global.t_shake_x)*0.1
global.t_shake_y += (0 - global.t_shake_y)*0.1
global.real_shake_x += (global.t_shake_x*global.shake_x - global.real_shake_x)*0.1
global.real_shake_y += (global.t_shake_y*global.shake_y - global.real_shake_y)*0.1
global.shake_time ++

if global.shake_time > 1
{
global.shake_x = -global.shake_x
global.shake_y = -global.shake_y
global.shake_time = 0
}

x += global.real_shake_x
y += global.real_shake_y