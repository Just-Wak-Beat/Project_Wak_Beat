/// @description Rank System
// You can write your code in this editor
var n_rank_real = convert_rank_to_num(global.n_rank[global.n_map_id])
	if global.t_selected_difficulty == 0 //하드 코어 모드
	{
		n_rank_real = convert_rank_to_num(global.n_rank_hardcore[global.n_map_id])
	}
	
global.overtime_highlight_song = 0

var target_rank = "--";
if global.total_died_here = 0
{
	if global.hp = 5
	{
		target_rank = "S+"
	}
	else if global.hp = 4
	{
		target_rank = "S"
	}
	else if (global.hp = 3 || global.hp = 2)
	{
		target_rank = "A+"
	}
	else
	{
		target_rank = "A"
	}
}
else if global.total_died_here = 1
{
	if global.hp >= 3 && global.hp <= 5
	{
		target_rank = "B+"
	}
	else
	{
		target_rank = "B"
	}
}
else if global.total_died_here = 2
{
	target_rank = "C+"
}
else if global.total_died_here = 3
{
	target_rank = "C"
}
else if global.total_died_here = 4
{
	target_rank = "C-"
}
else if global.total_died_here = 5
{
	target_rank = "D"
}
else if global.total_died_here = 6
{
	target_rank = "D-"
}
else
{
	target_rank = "F"
}



//경험치 증가
var temp_exp = (global.detailed_difficulty[global.n_map_id]+1)*global.music_duration*0.003*convert_rank_to_num(global.n_rank_display)*(1.5 - global.t_selected_difficulty*0.5);
global.exp += temp_exp;
global.exp_w_alpha = 1

global.real_stage_playtime[global.n_map_id] ++;







if global.n_map_list != 2
{
	var converted_rank_to_num = convert_rank_to_num(target_rank)
	var temp_score = ((converted_rank_to_num)*100+global.crossed_obstacle_num)*100
	if (global.t_selected_difficulty == 1)
	{
		if (converted_rank_to_num > convert_rank_to_num(global.n_rank[global.n_map_id]))
		{
			global.n_rank[global.n_map_id] = target_rank;
		}
		
		if (global.nickname != "" && global.n_map_list != 2 && (global.real_n_score[global.n_map_id] == "--" || temp_score > global.real_n_score[global.n_map_id]))
		{
			var temp_nickname = string(global.nickname)
			if (global.dev_mode == 1)
			{
				temp_nickname = temp_nickname+"[*_ABER]0";
			}
			else if (global.beta_tester == 1)
			{
				temp_nickname = temp_nickname+"[*_ABER]1";
			}
			LootLockerSetPlayerName(string(temp_nickname));
			LootLockerSubmitScore("JWAB_map"+string(global.n_map_id+1)+"_"+string(global.t_selected_difficulty+1),real(temp_score));
			LootLockerSetPlayerName(string(temp_nickname));
		
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
			var temp_nickname = string(global.nickname)
			if (global.dev_mode == 1)
			{
				temp_nickname = temp_nickname+"[*_ABER]0";
			}
			else if (global.beta_tester == 1)
			{
				temp_nickname = temp_nickname+"[*_ABER]1";
			}
			LootLockerSetPlayerName(string(temp_nickname));
			LootLockerSubmitScore("JWAB_map"+string(global.n_map_id+1)+"_"+string(global.t_selected_difficulty+1),real(temp_score));
			LootLockerSetPlayerName(string(temp_nickname));

			global.real_n_score_hardcore[global.n_map_id] = temp_score
			global.n_score = temp_score
		}
	}

	
	
	if (global.t_selected_difficulty == 0)
	{
		global.real_n_rank_hardcore[global.n_map_id] = target_rank;
	}
	else
	{
		global.real_n_rank[global.n_map_id] = target_rank;
	}

	
	if (global.real_n_score[global.n_map_id] == "--" || temp_score > global.real_n_score[global.n_map_id])
	{
		global.real_n_score[global.n_map_id] = temp_score;
	}
	
	if (global.real_n_rank[global.n_map_id] == "--")
	{
		global.artifact_owned[global.artifact_type]++
		global.n_artifact[global.n_map_id] = "완료";
		global.real_n_artifact[global.n_map_id] = "완료";
	}
	else
	{
		if (global.t_selected_difficulty == 0)
		{
			global.artifact_owned[global.artifact_type]++
		}
	}
}
else
{
	var converted_rank_to_num = convert_rank_to_num(target_rank)
	var temp_score = ((converted_rank_to_num)*100+global.crossed_obstacle_num)*100
	if (global.t_selected_difficulty == 1)
	{
		if (converted_rank_to_num > convert_rank_to_num(global.custom_n_rank[global.n_map_id]))
		{
			global.custom_n_rank[global.n_map_id] = target_rank;
		}
		
		if (global.nickname != "" && global.n_map_list != 2 && (global.custom_n_score[global.n_map_id] == "--" || temp_score > global.custom_n_score[global.n_map_id]))
		{
			global.custom_n_score[global.n_map_id] = temp_score
			global.n_score = temp_score
		}
	}
	else
	{
		if (converted_rank_to_num > convert_rank_to_num(global.custom_n_rank_hardcore[global.n_map_id]))
		{
			global.custom_n_rank_hardcore[global.n_map_id] = target_rank;
		}
		
		if (global.nickname != "" && global.n_map_list != 2 && (global.custom_n_score_hardcore[global.n_map_id] == "--" || temp_score > global.custom_n_score_hardcore[global.n_map_id]))
		{
			global.custom_n_score_hardcore[global.n_map_id] = temp_score
			global.n_score = temp_score
		}
	}
	
	
	//커스텀 맵 클리어 내역 저장
	ini_open(string(global.custom_map_directory)+"custom_map_file_"+string(global.n_map_id+1)+".JWABMAP")
	ini_write_string("custom_n_rank","value",global.n_rank[global.n_map_id])
	ini_write_string("n_rank_hardcore","value",global.n_rank_hardcore[global.n_map_id])
	ini_write_string("custom_n_score","value",global.n_score[global.n_map_id])
	ini_write_string("n_score_hardcore","value",global.n_score_hardcore[global.n_map_id])
	
	if global.custom_n_artifact[global.n_map_id] != "완료"
	{
		global.artifact_owned[global.artifact_type]++
		ini_write_string("custom_n_artifact","value","완료")
	}
	else
	{
		if global.t_selected_difficulty = 0
		{
			global.artifact_owned[global.artifact_type]++
		}
	}
	ini_close()
}



global.result_exp = temp_score
global.result_score = temp_score
global.result_rank = global.n_rank_display
global.result_obstacle = global.crossed_obstacle_num






save_and_load_data(0,false)
alarm[6] = 20

event_user(4)