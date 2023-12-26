/// @description Insert description here
// You can write your code in this editor

var tmp_color = make_color_rgb(m_data_arg0,m_data_arg1,m_data_arg2);
image_blend = tmp_color;
if (global.timeline_stop == -1)
{
	set_hitbox_color(image_blend,floor(m_data_arg6),x,y);
	instance_destroy();
}