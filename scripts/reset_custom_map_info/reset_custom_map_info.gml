// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function reset_custom_map_info()
{
	for(var i = 0; i < 99; i++)
	{
		//커스텀 곡 정보
		global.custom_stage_map_name[i] = "";
		global.custom_stage_map_artist[i] = -4;
		global.custom_stage_map_difficulty[i] = -4;
		global.custom_map_duration[i] = -4;
		global.custom_stage_map_color[i] = -4;
		global.custom_stage_bpm[i] = -4;
		global.custom_stage_map_highlight_part[i] = -4;
		global.custom_n_score[i] = "--";
		global.custom_n_score_hardcore[i] = "--";
		global.custom_n_artifact[i] = "X";
		global.custom_detailed_difficulty[i] = -4;
		global.custom_obtainable_type[i] = -4;
		global.custom_requirement_level[i] = -4;
		global.custom_stage_album[i] = -4;
		global.custom_audio_asset[i] = -4;
		global.custom_stage_mapper[i] = -4;
		global.custom_map_file_dir[i] = "";
	}
}