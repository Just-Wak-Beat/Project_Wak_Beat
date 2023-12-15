/// @description Insert description here
// You can write your code in this editor

if (global.timeline_stop == -1)
{
	if (m_data_arg7 != -999)
	{
		var zoom_scale = floor(50+m_data_arg0*12*0.65)/100;
		if (m_data_arg6 != 1)
		{
			global.n_camera_zoom = zoom_scale;
		}
		else
		{
			camera_focus_on(x,y,zoom_scale)
		}
		
		var tmp_slow_zoom = -floor((m_data_arg1-180)/10)/20000;
		global.camera_slow_zoom = tmp_slow_zoom;
		show_debug_message("tmp_slow_zoom : "+string(tmp_slow_zoom));
	}
	else
	{
		view_shake(0.1,m_data_arg0,0.1,round(m_data_arg1/180));
	}
	
	instance_destroy();
}