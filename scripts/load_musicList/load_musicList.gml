// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information


///@param all/fav
function load_musicList(argument0)
{
	if argument0 = 0
	{
	global.total_map = global.origin_total_map
	
		for(var i = 0; i < global.total_map; i++)
		{
		//기존 모든 곡 항목에서 좋아하는 곡 목록으로 데이터 복사
		global.stage_map_name[i] = global.real_stage_map_name[i];
		global.stage_map_artist[i] = global.real_stage_map_artist[i];
		global.stage_map_difficulty[i] = global.real_stage_map_difficulty[i];
		global.stage_map_color[i] = global.real_stage_map_color[i];
		global.stage_map_duration[i] = global.real_stage_map_duration[i];
		global.stage_map_audio_name[i] = global.real_stage_map_audio_name[i];
		global.stage_bpm[i] = global.real_stage_bpm[i];
		global.stage_map_highlight_part[i] = global.real_stage_map_highlight_part[i];
		global.n_rank[i] = global.real_n_rank[i];
		global.n_favorite[i] = global.real_n_favorite[i];
		global.n_artifact[i] = global.real_n_artifact[i];
		global.detailed_difficulty[i] = global.real_detailed_difficulty[i];
		global.requirement_type[i] = global.real_requirement_type[i];
		global.requirement_number[i] = global.real_requirement_number[i];
		}
	}
	
	if argument0 = 1
	{
	global.total_map = get_fav_list_num();
	
		for(var i = 0; i < global.total_map; i++)
		{
		var ii = global.fav_map_id[i]
		//기존 모든 곡 항목에서 좋아하는 곡 목록으로 데이터 복사
		global.stage_map_name[i] = global.real_stage_map_name[ii];
		global.stage_map_artist[i] = global.real_stage_map_artist[ii];
		global.stage_map_difficulty[i] = global.real_stage_map_difficulty[ii];
		global.stage_map_color[i] = global.real_stage_map_color[ii];
		global.stage_map_duration[i] = global.real_stage_map_duration[ii];
		global.stage_map_audio_name[i] = global.real_stage_map_audio_name[ii];
		global.stage_bpm[i] = global.real_stage_bpm[ii];
		global.stage_map_highlight_part[i] = global.real_stage_map_highlight_part[ii];
		global.n_rank[i] = global.real_n_rank[ii];
		global.n_favorite[i] = global.real_n_favorite[ii];
		global.n_artifact[i] = global.real_n_artifact[ii];
		global.detailed_difficulty[i] = global.real_detailed_difficulty[ii];
		global.requirement_type[i] = global.real_requirement_type[ii];
		global.requirement_number[i] = global.real_requirement_number[ii];
		}
	}
	
	if argument0 = 2
	{
	global.total_map = get_none_cleared_list_num();
	
		for(var i = 0; i < global.total_map; i++)
		{
		var ii = global.none_clear_map_id[i]
		//기존 모든 곡 항목에서 좋아하는 곡 목록으로 데이터 복사
		global.stage_map_name[i] = global.real_stage_map_name[ii];
		global.stage_map_artist[i] = global.real_stage_map_artist[ii];
		global.stage_map_difficulty[i] = global.real_stage_map_difficulty[ii];
		global.stage_map_color[i] = global.real_stage_map_color[ii];
		global.stage_map_duration[i] = global.real_stage_map_duration[ii];
		global.stage_map_audio_name[i] = global.real_stage_map_audio_name[ii];
		global.stage_bpm[i] = global.real_stage_bpm[ii];
		global.stage_map_highlight_part[i] = global.real_stage_map_highlight_part[ii];
		global.n_rank[i] = global.real_n_rank[ii];
		global.n_favorite[i] = global.real_n_favorite[ii];
		global.n_artifact[i] = global.real_n_artifact[ii];
		global.detailed_difficulty[i] = global.real_detailed_difficulty[ii];
		global.requirement_type[i] = global.real_requirement_type[ii];
		global.requirement_number[i] = global.real_requirement_number[ii];
		}
	}
	
	if argument0 = 3
	{
	global.total_map = get_unlocked_list_num();
	
		for(var i = 0; i < global.total_map; i++)
		{
		var ii = global.unlocked_map_id[i]
		//기존 모든 곡 항목에서 좋아하는 곡 목록으로 데이터 복사
		global.stage_map_name[i] = global.real_stage_map_name[ii];
		global.stage_map_artist[i] = global.real_stage_map_artist[ii];
		global.stage_map_difficulty[i] = global.real_stage_map_difficulty[ii];
		global.stage_map_color[i] = global.real_stage_map_color[ii];
		global.stage_map_duration[i] = global.real_stage_map_duration[ii];
		global.stage_map_audio_name[i] = global.real_stage_map_audio_name[ii];
		global.stage_bpm[i] = global.real_stage_bpm[ii];
		global.stage_map_highlight_part[i] = global.real_stage_map_highlight_part[ii];
		global.n_rank[i] = global.real_n_rank[ii];
		global.n_favorite[i] = global.real_n_favorite[ii];
		global.n_artifact[i] = global.real_n_artifact[ii];
		global.detailed_difficulty[i] = global.real_detailed_difficulty[ii];
		global.requirement_type[i] = global.real_requirement_type[ii];
		global.requirement_number[i] = global.real_requirement_number[ii];
		}
	}
	
	
	if global.b_map_list != global.n_map_list
	{
	code.alarm[3] = 1
	global.t_select_map = 2
	global.b_map_list = global.n_map_list
	}
	
n_stage = 0
}