/// @description Rank System
// You can write your code in this editor
if (global.n_score_displaying > 0)
{
	global.overtime_highlight_song = 0
	var tmp_score = global.n_score_displaying;
	var tmp_normal_score_to_int = (is_real(global.n_score[global.n_map_id])) ? global.n_score[global.n_map_id] : 0;
	var tmp_hardcore_score_to_int = (is_real(global.n_score_hardcore[global.n_map_id])) ? global.n_score_hardcore[global.n_map_id] : 0;

	//경험치 증가
	if (global.level != 0)
	{
		var temp_exp = (global.detailed_difficulty[global.n_map_id])*global.music_duration*0.003*convert_rank_to_num(global.result_rank)*(1.5 - global.t_selected_difficulty*0.5)+global.crossed_obstacle_num*50;
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
		show_guide("조작법 가이드");
	}
	global.exp_w_alpha = 1





	var send_score = 0;

	if (global.n_map_list != 2)
	{
		global.real_stage_playtime[global.n_map_id] ++;
	

		if (global.t_selected_difficulty == 1)
		{
			if (tmp_score > tmp_normal_score_to_int)
			{
				send_score = 1;
				global.real_n_score[global.n_map_id] = tmp_score;
				global.n_score = tmp_score;
			}
		}
		else
		{
			if (tmp_score > tmp_hardcore_score_to_int)
			{
				send_score = 1;
				global.real_n_score_hardcore[global.n_map_id] = tmp_score;
				global.n_score_hardcore = tmp_score;
			}
		}

	
	
		if (global.artifact_owned[0] == 0)
		{
			global.obtainable_type[global.n_map_id] = "완료";
			global.real_n_artifact[global.n_map_id] = "완료";
		}
	}
	else
	{
		if (tmp_score > tmp_normal_score_to_int)
		{
			global.custom_n_score[global.n_map_id] = tmp_score;
			global.n_score = tmp_score;
		}
	
	
		//커스텀 맵 클리어 내역 저장
		ini_open(string(global.custom_map_file_dir[global.n_map_id])+"\\map_info.ini")
		ini_write_string("custom_n_score",string(global.nickname),tmp_normal_score_to_int)
		ini_write_string("n_score_hardcore",string(global.nickname),tmp_hardcore_score_to_int)
	
		if (global.custom_n_artifact[global.n_map_id] != "완료")
		{
			ini_write_string("custom_n_artifact",string(global.nickname),"완료")
		}

		ini_close()
	}


	global.result_exp = tmp_score/250;
	global.result_score = tmp_score;
	global.result_obstacle = global.crossed_obstacle_num

	//온라인 랭킹 점수 등록
	if (send_score == 1 && global.nickname != "")
	{
		set_score(global.nickname, global.result_score, global.t_selected_difficulty);
	}



	save_and_load_data(0,1)
	alarm[6] = 20

	global.n_score_displaying = -4;
}