/// @description Insert description here
// You can write your code in this editor

if (global.timeline_stop == -1)
{
	if (m_data_arg8 == 0)
	{
		global.t_bg_color = m_data_arg0;
	}
	else if (m_data_arg8 == 1)
	{
		if (global.flash_effect_setting != 1)
		{
			global.w_alpha = m_data_arg0;
		}
	}
	else if (m_data_arg8 == 2)
	{
		global.master_remix_effect = (m_data_arg6 == 1) ? 1 : 0;
	}
	else if (m_data_arg8 == 3)
	{
		if (m_data_arg6 == 1)
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