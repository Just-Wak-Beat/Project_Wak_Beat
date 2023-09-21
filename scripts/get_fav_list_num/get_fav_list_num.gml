// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function get_fav_list_num()
{
	var cal = 0
	for(var i = 0; i < global.origin_total_map; i++)
	{
		if (global.real_n_favorite[i] == 1)
		{
			cal ++
		}
	}

	global.fav_music_num = cal;
	return cal;
}