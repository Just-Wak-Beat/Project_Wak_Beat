/// @description Insert description here
// You can write your code in this editor

if (global.timeline_stop == -1)
{
	global.t_bg_color = ed_arg0;
	global.master_remix_effect = (m_data_arg2 >= 128) ? 1 : 0;
	if (m_data_arg6 == 1)
	{
		global.w_alpha = ed_arg5;
	}
	
	instance_destroy();
}