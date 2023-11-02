/// @description Insert description here
// You can write your code in this editor

var tmp_color = merge_color(c_black,make_color_rgb(m_data_arg2,m_data_arg3,m_data_arg4),fix_num(m_data_arg5/1200));
image_blend = tmp_color;
if (global.timeline_stop == 0)
{
	set_hitbox_color(image_blend,m_data_arg6,x,y);
	instance_destroy();
}