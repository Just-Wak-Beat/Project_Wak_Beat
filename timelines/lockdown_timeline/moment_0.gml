global.map_color = #df1a62
global.lockdown_effect1 = 0
global.lockdown_effect2 = 0
global.lockdown_effect3 = 0
global.lockdown_effect4 = 0
with(hitbox_3)
{
	if (object_index == hitbox_3 && target_time == 9999)
	{
		instance_destroy()
	}
}

global.lockdown_effect5 = 0
lockdown_effect4_1 = 0
lockdown_effect5_1 = 0
lockdown_effect5_2 = 0
lockdown_effect5_3 = 0
global.background_color = c_black
global.t_bg_color_alpha = 0
global.t_bg_color = 0
global.t_map_speed = 0
global.map_speed = 0
global.artifact_type = irandom_range(1,6)


while(true)
{
	global.t_map_speed_x = 64*choose(-1,0,1)
	global.t_map_speed_y = 64*choose(-1,0,1)

	if (global.t_map_speed_x != 0 || global.t_map_speed_y != 0)
	{
		break;
	}
}

if (global.t_selected_difficulty = 1 && global.boss_battle == 0)
{
	global.savepoint_position[0] = 1291;
	global.savepoint_color[0] = c_black;
	global.savepoint_position[1] = 2653;
	global.savepoint_color[1] = c_black;
}