// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

///@param x
///@param y
///@param zoom_ratio
function camera_focus_on(argument0,argument1,argument2)
{
	global.camera_target_x = argument0;
	global.camera_target_y = argument1;
	global.n_camera_zoom = argument2;
}