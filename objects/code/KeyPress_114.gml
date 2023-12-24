/// @description Insert description here
// You can write your code in this editor
if global.dev_mode = 1
{
	//곡 정보
	for(var i = 0; i < global.total_map; i++)
	{
		global.n_artifact[i] = "X";
		global.real_n_artifact[i] = "X";
		global.n_score[i] = "--";
		global.n_score_hardcore[i] = "--";
		global.real_n_score[i] = "--";
		global.real_n_score_hardcore[i] = "--";

		global.b_unlocked_music_name[i] = "";
		global.new_unlocked_map_num = 0
	}
	
	global.total_score_normal = 0;
	global.total_score_hardcore = 0;

	load_musicList(global.n_map_list)
	global.t_b_alpha = -0.01;
	global.nickname = "";
}