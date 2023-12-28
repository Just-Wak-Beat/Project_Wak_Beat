/// @description Insert description here
// You can write your code in this editor

if (global.timeline_stop == -1)
{
	if (m_data_arg7 != -999)
	{
		if (m_data_arg6 != 1)
		{
			global.n_camera_zoom = m_data_arg0;
		}
		else
		{
			camera_focus_on(x,y,m_data_arg0)
		}
		
		global.camera_slow_zoom = m_data_arg1/1000;
		show_debug_message("tmp_slow_zoom : "+string(m_data_arg1));
	}
	else
	{
		view_shake(0.1,m_data_arg0,0.1,m_data_arg1);
	}
	
	instance_destroy();
}