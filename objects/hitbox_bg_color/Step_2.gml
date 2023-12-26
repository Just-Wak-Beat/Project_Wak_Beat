/// @description Insert description here
// You can write your code in this editor
var tmp_color = merge_color_new(c_black,make_color_rgb(m_data_arg0,m_data_arg1,m_data_arg2),m_data_arg3);
image_blend = tmp_color;
if (global.timeline_stop == -1)
{
	if (m_data_arg6 == 1)
	{
		set_bg_color_with_effect(image_blend,x,y,m_data_arg3);
		global.t_bg_color = m_data_arg3;
	}
	else
	{
		global.background_color = image_blend;
		global.t_bg_color_alpha = m_data_arg3;
		global.t_bg_color = m_data_arg3;
	}
	instance_destroy();
}