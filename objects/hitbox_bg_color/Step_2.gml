/// @description Insert description here
// You can write your code in this editor
var tmp_color = merge_color(c_black,make_color_rgb(m_data_arg2,m_data_arg3,m_data_arg4),fix_num(m_data_arg5/1200));
image_blend = tmp_color;
if (global.timeline_stop == 0)
{
	if (m_data_arg6 == 1)
	{
		set_bg_color_with_effect(image_blend,x,y,m_data_arg5);
		global.t_bg_color = m_data_arg5;
	}
	else
	{
		global.background_color = image_blend;
		global.t_bg_color_alpha = m_data_arg5;
		global.t_bg_color = m_data_arg5;
	}
	instance_destroy();
}