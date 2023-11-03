/// @description Insert description here
// You can write your code in this editor

if (global.timeline_stop == -1)
{
	global.camera_slow_zoom = ed_arg1;
	camera_focus_on(x,y,ed_arg0)
	view_shake(0.1,ed_arg2,0.1,ed_arg3);
	
	instance_destroy();
}