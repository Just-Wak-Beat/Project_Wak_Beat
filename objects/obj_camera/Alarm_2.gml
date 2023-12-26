/// @description Insert description here
// You can write your code in this editor









if (global.play_custom_map == 1)
{
	global.map_color = global.custom_stage_map_color[global.n_map_id];
	if (global.map_color == -4 || global.map_color == "")
	{
		global.map_color = c_black;
	}
}
else
{
	global.map_color = global.stage_map_color[global.n_map_id];
	if (global.map_color == -4 || global.map_color == "")
	{
		global.map_color = c_black;
	}
}
