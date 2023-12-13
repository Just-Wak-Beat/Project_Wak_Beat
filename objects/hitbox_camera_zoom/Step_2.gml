/// @description Insert description here
// You can write your code in this editor

if (global.timeline_stop == -1)
{
	global.camera_slow_zoom = (m_data_arg1-180)/1000;
	camera_focus_on(x,y,0.5+m_data_arg0/20)
	view_shake(0.1,floor((m_data_arg2)/255*25),0.1,floor((m_data_arg3)/255*2));
	
	instance_destroy();
}