/// @description Insert description here
// You can write your code in this editor
if global.dev_mode = 1
{
	//곡 정보
	for(var i = 0; i < global.total_map; i++)
	{
	//실제 리스트에만 표기되는 곡
	global.n_artifact[i] = "X";

	//모든곡 정보
	global.real_n_artifact[i] = "X";
	}

	load_musicList(global.n_map_list)
	global.t_b_alpha = -0.01;
}