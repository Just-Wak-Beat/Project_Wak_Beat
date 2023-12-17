/// @description Rank System
// You can write your code in this editor
var n_rank_real = convert_rank_to_num(global.n_rank[global.n_map_id])
if global.t_selected_difficulty == 0 //하드 코어 모드
{
	n_rank_real = convert_rank_to_num(global.n_rank_hardcore[global.n_map_id])
}
	
global.overtime_highlight_song = 0

var target_rank = global.result_rank;




//경험치 증가
if (global.level != 0)
{
	var temp_exp = (global.detailed_difficulty[global.n_map_id])*global.music_duration*0.003*convert_rank_to_num(target_rank)*(1.5 - global.t_selected_difficulty*0.5)+global.crossed_obstacle_num*50;
	if (global.play_custom_map == 1)
	{
		temp_exp = temp_exp/3;
	}
	
	global.exp += temp_exp;
	
	show_debug_message("exp +"+string(temp_exp));
}
else
{
	global.exp = global.max_exp+1;
}
global.exp_w_alpha = 1









if global.n_map_list != 2
{
	global.real_stage_playtime[global.n_map_id] ++;
	
	var converted_rank_to_num = convert_rank_to_num(target_rank)
	var temp_score = ((converted_rank_to_num)*100+global.crossed_obstacle_num)*100+((global.dash_cross_bonus+global.dash_cross_bonus_maxhp)*global.crossed_obstacle_num)+((converted_rank_to_num >= 12) ? global.clear_bonus_score : 0)
	if (global.t_selected_difficulty == 1)
	{
		if (converted_rank_to_num > convert_rank_to_num(global.n_rank[global.n_map_id]))
		{
			global.n_rank[global.n_map_id] = target_rank;
		}
		
		if (global.nickname != "" && global.n_map_list != 2 && (global.real_n_score[global.n_map_id] == "--" || temp_score > global.real_n_score[global.n_map_id]))
		{
			//LootLockerSubmitScore("PWB_map_"+string(global.n_map_id+1)+"_"+string(global.t_selected_difficulty+1),real(temp_score));

			global.real_n_score[global.n_map_id] = temp_score
			global.n_score = temp_score
		}
	}
	else
	{
		if (converted_rank_to_num > convert_rank_to_num(global.n_rank_hardcore[global.n_map_id]))
		{
			global.n_rank_hardcore[global.n_map_id] = target_rank;
		}
		
		if (global.nickname != "" && global.n_map_list != 2 && (global.real_n_score_hardcore[global.n_map_id] == "--" || temp_score > global.real_n_score_hardcore[global.n_map_id]))
		{
			//LootLockerSubmitScore("PWB_map_"+string(global.n_map_id+1)+"_"+string(global.t_selected_difficulty+1),real(temp_score));


			global.real_n_score_hardcore[global.n_map_id] = temp_score
			global.n_score_hardcore = temp_score
		}
	}

	


	
	if (global.real_n_score[global.n_map_id] == "--" || temp_score > global.real_n_score[global.n_map_id])
	{
		global.real_n_score[global.n_map_id] = temp_score;
	}
	
	if (global.real_n_rank[global.n_map_id] == "--" || global.artifact_owned[0] == 0)
	{
		global.obtainable_type[global.n_map_id] = "완료";
		global.real_n_artifact[global.n_map_id] = "완료";
	}

	
	
	if (global.t_selected_difficulty == 0)
	{
		global.real_n_rank_hardcore[global.n_map_id] = target_rank;
	}
	else
	{
		global.real_n_rank[global.n_map_id] = target_rank;
	}
}
else
{
	var converted_rank_to_num = convert_rank_to_num(target_rank)
	var temp_score = ((converted_rank_to_num)*100+global.crossed_obstacle_num)*100+((global.dash_cross_bonus+global.dash_cross_bonus_maxhp)*global.crossed_obstacle_num)+((converted_rank_to_num >= 12) ? global.clear_bonus_score : 0)
	if (global.t_selected_difficulty == 1)
	{
		if (global.n_map_list != 2 && (global.custom_n_score[global.n_map_id] == "--" || temp_score > global.custom_n_score[global.n_map_id]))
		{
			global.custom_n_score[global.n_map_id] = temp_score;
			global.n_score = temp_score;
		}
		
		if (converted_rank_to_num > convert_rank_to_num(global.custom_n_rank[global.n_map_id]))
		{
			global.custom_n_rank[global.n_map_id] = target_rank;
		}
	}
	else
	{
		if (global.n_map_list != 2 && (global.custom_n_score_hardcore[global.n_map_id] == "--" || temp_score > global.custom_n_score_hardcore[global.n_map_id]))
		{
			global.custom_n_score_hardcore[global.n_map_id] = temp_score;
			global.n_score_hardcore = temp_score;
		}
		
		if (converted_rank_to_num > convert_rank_to_num(global.custom_n_rank_hardcore[global.n_map_id]))
		{
			global.custom_n_rank_hardcore[global.n_map_id] = target_rank;
		}
		
	}
	
	
	//커스텀 맵 클리어 내역 저장
	ini_open(string(global.custom_map_file_dir[global.n_map_id])+"\\map_info.ini")
	ini_write_string("custom_n_rank","value",global.n_rank[global.n_map_id])
	ini_write_string("n_rank_hardcore","value",global.n_rank_hardcore[global.n_map_id])
	ini_write_string("custom_n_score","value",global.n_score[global.n_map_id])
	ini_write_string("n_score_hardcore","value",global.n_score_hardcore[global.n_map_id])
	
	if (global.custom_n_artifact[global.n_map_id] != "완료")
	{
		ini_write_string("custom_n_artifact","value","완료")
	}

	ini_close()
}



global.result_exp = temp_score
global.result_score = temp_score
global.result_obstacle = global.crossed_obstacle_num


//랭킹에 점수 전송
global.total_score_normal = 0;
global.total_score_hardcore = 0;



save_and_load_data(0,false)
alarm[6] = 20

event_user(4)