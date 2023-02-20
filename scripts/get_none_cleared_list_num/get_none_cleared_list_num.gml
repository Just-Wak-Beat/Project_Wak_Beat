// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function get_none_cleared_list_num()
{
var cal = 0
	for(var i = 0; i < global.origin_total_map; i++)
	{
		if global.real_n_artifact[i] = "X"
		{
		global.none_clear_map_id[i] = i;
		cal ++
		}
	}

global.none_cleared_music_num = cal;
return cal;
}