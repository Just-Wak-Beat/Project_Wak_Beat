// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function load_unlocked_list()
{
var cal = 0, correction = 0;
	for(var i = 0; i < global.origin_total_map; i++)
	{
		if global.artifact_owned[global.real_requirement_type[i]] >= global.real_requirement_number[i]
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

return cal;
}