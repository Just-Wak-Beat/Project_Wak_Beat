// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information


///@param all/fav
function load_musicList(argument0)
{
//load_none_cleared_list();
//load_unlocked_list();
global.custom_map_volume_control = (global.n_map_list == 2) ? 0.5 : 1
	
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
	else if argument0 = 1
	{
		global.total_map = get_fav_list_num();
	
		for(var i = 0; i < global.total_map; i++)
		{
			var ii = global.fav_map_id[i]
			if ii = -4
			{
				break;
			}
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
	else if argument0 = 2
	{
		global.total_map = load_custom_map_num();//"custom_map_file_"+string(i)의 파일 갯수로 확인 
	
		for(var i = 0; i < global.total_map; i++)
		{
			//기존 모든 곡 항목에서 좋아하는 곡 목록으로 데이터 복사
			global.stage_map_name[i] = global.custom_stage_map_name[i]; //곡 제목 (문자열)
			global.stage_map_artist[i] = global.custom_stage_map_artist[i];
			global.stage_map_difficulty[i] = global.custom_stage_map_difficulty[i];
			global.stage_map_color[i] = global.custom_stage_map_color[i];
			global.stage_map_duration[i] = global.custom_map_duration[i];
			global.stage_map_audio_name[i] = global.custom_stage_map_audio_name[i]; //곡 파일명 (확장자 제외)
			global.stage_bpm[i] = global.custom_stage_bpm[i];
			global.stage_map_highlight_part[i] = global.custom_stage_map_highlight_part[i];
			global.n_rank[i] = global.custom_n_rank[i];
			global.n_favorite[i] = -1;
			global.n_artifact[i] = global.custom_n_artifact[i];
			global.detailed_difficulty[i] = global.custom_detailed_difficulty[i];
			global.requirement_type[i] = 0;
			global.requirement_number[i] = 0;
		}
	}
	else if (argument0 == 3)
	{
		var correction = 0, total_num = 0;
	
	
		for(var k = 0; k < global.origin_total_map; k++)
		{
			var __type = global.real_requirement_type[k]
			if (global.artifact_owned[__type] >= global.real_requirement_number[k])
			{
				var kk = k-correction;
				global.unlocked_map_id[kk] = k
				//기존 모든 곡 항목에서 좋아하는 곡 목록으로 데이터 복사
				global.stage_map_name[kk] = global.real_stage_map_name[k];
				global.stage_map_artist[kk] = global.real_stage_map_artist[k];
				global.stage_map_difficulty[kk] = global.real_stage_map_difficulty[k];
				global.stage_map_color[kk] = global.real_stage_map_color[k];
				global.stage_map_duration[kk] = global.real_stage_map_duration[k];
				global.stage_map_audio_name[kk] = global.real_stage_map_audio_name[k];
				global.stage_bpm[kk] = global.real_stage_bpm[k];
				global.stage_map_highlight_part[kk] = global.real_stage_map_highlight_part[k];
				global.n_rank[kk] = global.real_n_rank[k];
				global.n_favorite[kk] = global.real_n_favorite[k];
				global.n_artifact[kk] = global.real_n_artifact[k];
				global.detailed_difficulty[kk] = global.real_detailed_difficulty[k];
				global.requirement_type[kk] = global.real_requirement_type[k];
				global.requirement_number[kk] = global.real_requirement_number[k];

				total_num++;
			}
			else
			{
				correction++;
			}
		}
		global.total_map = total_num
	}
	
	
	if global.b_map_list != global.n_map_list
	{
		global.map_list_ui_position = global.n_map_list - global.b_map_list
		code.alarm[3] = 1
		global.t_select_map = 2
		global.b_map_list = global.n_map_list
		audio_play_sound(common_sfx1,0,false,0.2*global.master_volume*global.sfx_volume)
	}
	

	if (global.title_menu_animation1 == -1)
	{
		var check_new_song = 0;
		for(var i = 0; i < global.origin_total_map; i++)
		{
			if (global.artifact_owned[global.real_requirement_type[i]] >= global.real_requirement_number[i])
			{
				global.unlocked_music_name[i] = global.real_stage_map_name[i];
				if (global.unlocked_music_name[i] != global.b_unlocked_music_name[i])
				{
					global.b_unlocked_music_name[i] = global.unlocked_music_name[i];
					global.unlocked_music_name_new_list[check_new_song] = global.real_stage_map_name[i];
					global.unlocked_music_name_new_list_color[check_new_song] = merge_color(global.real_stage_map_color[i],c_white,0.5);
					check_new_song++
				}
			}
		
			show_debug_message(global.unlocked_music_name[i])
		}
	
		if (check_new_song > 0 || (global.acquired_skin >= 0 && global.unlocked_player_skin[global.acquired_skin] == 0))
		{
			//신 스킨 획득 메시지 출력
			if (global.acquired_skin >= 0)
			{
				global.unlocked_music_name_new_list[check_new_song] = "새로운 캐릭터 획득! - "+string(global.unlocked_player_skin_name[global.acquired_skin])
				global.unlocked_music_name_new_list_color[check_new_song] = c_white;
				global.unlocked_player_skin[global.acquired_skin] = 1;
				global.acquired_skin = -4
				check_new_song++
			}
		
			global.new_unlocked_map_num = check_new_song;
			global.show_new_songs = 1;
			global.t_b_alpha = -0.01;
			global.t_new_song_scroll = 0
			global.new_song_scroll = 0
			//audio_play_sound(cleared_sfx,0,false,global.master_volume*global.sfx_volume*4)
		}
	

	
		n_stage = 0
	}
}