global.map_color = #df1a62
global.lockdown_effect1 = 0
global.lockdown_effect2 = 0

while(true)
{
	global.t_map_speed_x = 64*choose(-1,0,1)
	global.t_map_speed_y = 64*choose(-1,0,1)

	if (global.t_map_speed_x != 0 || global.t_map_speed_y != 0)
	{
		break;
	}
}