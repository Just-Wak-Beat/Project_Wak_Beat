/// @description Insert description here
// You can write your code in this editor
if global.dev_mode = 1
{
	for(var i = 0; i <= 7; i++)
	{
		if i = 0
		{
		global.artifact_owned[i] = 1;
		}
		else
		{
		global.artifact_owned[i] = 0;
		}
	}
	
	for(var i = 0; i < global.total_map; i++)
	{
	global.n_rank[i] = "--";
	global.n_rank_hardcore[i] = "--";
	global.real_n_rank[i] = "--";
	global.real_n_rank_hardcore[i] = "--";
	global.n_artifact[i] = "X";
	global.real_n_artifact[i] = "X";
	}
	
	load_musicList(global.n_map_list)
}
