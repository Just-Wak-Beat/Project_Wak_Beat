/// @description Insert description here
// You can write your code in this editor

if (global.timeline_stop == -1)
{
	if (m_data_arg4 == 0)
	{
		global.t_bg_color = ed_arg0;
	}
	else if (m_data_arg4 == 1)
	{
		global.w_alpha = m_data_arg0;
	}
	else if (m_data_arg4 == 2)
	{
		global.master_remix_effect = (m_data_arg5 == 1) ? 1 : 0;
	}
	else if (m_data_arg4 == 3)
	{
		if (m_data_arg5 == 1)
		{
			global.automatic_camera_movement = m_data_arg0;
		}
		else
		{
			global.blackout_effect = m_data_arg0;
		}
	}
	
	instance_destroy();
}