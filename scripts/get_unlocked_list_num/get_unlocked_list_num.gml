// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function get_unlocked_list_num()
{
	var cal = 0
	for(var i = 0; i < global.origin_total_map; i++)
	{
		if (global.artifact_owned[global.real_requirement_type[i]] >= global.real_requirement_number[i])
		{
			cal ++
		}
	}

	global.unlocked_music_num = cal;
	return cal;
}