// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function load_none_cleared_list()
{
	var cal = 0, correction = 0;
	for(var i = 0; i < global.origin_total_map; i++)
	{
		if (global.level >= global.real_requirement_level[i])
		{
			global.unlocked_map_id[i-correction] = i;
			correction = 0
			cal ++
		}
		else
		{
			correction ++
		}
	}

	global.unlocked_music_num = cal;
}