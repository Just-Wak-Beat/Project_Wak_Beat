/// @description Insert description here
// You can write your code in this editor

if (global.timeline_stop == -1)
{
	if (m_data_arg6 != 1)
	{
		global.map_speed = m_data_arg0;
		global.map_speed_y = m_data_arg0;
	}
	global.t_map_speed = m_data_arg0;
	global.t_map_speed_y = m_data_arg0;
	instance_destroy();
}