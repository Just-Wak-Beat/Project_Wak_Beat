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
		if n_rank_real < 12
		{
			target_rank = "S+"
		}
	}
	else if global.hp = 4
	{
		if n_rank_real < 11
		{
			target_rank = "S"
		}
	}
	else if (global.hp = 3 || global.hp = 2)
	{
		if n_rank_real < 10
		{
			target_rank = "A+"
		}
	}
	else
	{
		if n_rank_real < 9
		{
			target_rank = "A"
		}
	}
}
else if global.total_died_here = 1
{
	if global.hp >= 3 && global.hp <= 5
	{
		if n_rank_real < 8
		{
			target_rank = "B+"
		}
	}
	else
	{
		if n_rank_real < 7
		{
			target_rank = "B"
		}
	}
}
else if global.total_died_here = 2
{
	if n_rank_real < 6
	{
		target_rank = "C+"
	}
}
else if global.total_died_here = 3
{
	if n_rank_real < 5
	{
		target_rank = "C"
	}
}
else if global.total_died_here = 4
{
	if n_rank_real < 4
	{
		target_rank = "C-"
	}
}
else if global.total_died_here = 5
{
	if n_rank_real < 3
	{
		target_rank = "D"
	}
}
else if global.total_died_here = 6
{
	if n_rank_real < 2
	{
		target_rank = "D-"
	}
}
else
{
	if n_rank_real < 1
	{
		target_rank = "F"
	}
}



//경험치 증가
global.exp += (global.detailed_difficulty[global.n_map_id]+1)*global.music_duration*0.003*convert_rank_to_num(global.n_rank_display)*(1.5 - global.t_selected_difficulty*0.5);
global.exp_w_alpha = 1

global.real_stage_playtime[global.n_map_id] ++;
if global.t_selected_difficulty == 1
{
	global.n_rank[global.n_map_id] = target_rank;
}
else
{
	global.n_rank_hardcore[global.n_map_id] = target_rank;
	if n_rank_real > convert_rank_to_num(global.n_rank[global.n_map_id])
	{
		global.n_rank[global.n_map_id] = target_rank;
	}
}



if global.n_map_list != 2
{
	global.real_n_rank[global.n_map_id] = target_rank
	
	if global.real_n_artifact[global.n_map_id] != "완료"
	{
		global.artifact_owned[global.artifact_type]++
		global.n_artifact[global.n_map_id] = "완료"
		global.real_n_artifact[global.n_map_id] = "완료"
	}
	else
	{
		if global.t_selected_difficulty = 0
		{
			global.artifact_owned[global.artifact_type]++
		}
	}
}
else
{
//커스텀 맵 클리어 내역 저장
ini_open(string(global.custom_map_directory)+"custom_map_file_"+string(global.n_map_id+1)+".JWABMAP")
ini_write_string("custom_n_rank","value",global.n_rank[global.n_map_id])
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





global.total_died_here = 0

save_and_load_data(0,false)
alarm[6] = 20

event_user(4)