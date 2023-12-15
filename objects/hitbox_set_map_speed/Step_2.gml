/// @description Insert description here
// You can write your code in this editor

if (global.timeline_stop == -1)
{
	if (m_data_arg6 != 1)
	{
		global.map_speed = floor(m_data_arg0*6-300);
		global.map_speed_y = (m_data_arg0-180);
	}
	global.t_map_speed = floor(m_data_arg0*6-300);
	global.t_map_speed_y = (m_data_arg0-180);
	instance_destroy();
}