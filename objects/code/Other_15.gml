/// @description 랭크 표시
// You can write your code in this editor




var in_top_ten = 0;
var skip_list = 0;
var duplicated_name_list = 0;
for(var i = 0; i < 10; i++)
{
	duplicated_name_list[i] = -4;
}

for(var i = 0; i < 11; i++)
{
	var temp_name = LLHighscoresTopNamesList()[i+skip_list];
	
	//리더보드 리스트에 중복된 닉네임이 있는경우 스킵
	for(var ii = 0; ii < 10; ii++)
	{
		while(duplicated_name_list[ii] == temp_name)
		{
			skip_list++;
			temp_name = LLHighscoresTopNamesList()[i+skip_list];
			show_debug_message("duplicated name");
			break;
		}
		
		if (duplicated_name_list[ii] == -4)
		{
			duplicated_name_list[ii] = temp_name;
			break;
		}
	}
	
	show_debug_message(temp_name);
	var certain_text_code_inserted = string_pos("[*_ABER]",temp_name)
	var add_nametag = "";
	if (certain_text_code_inserted != 0)
	{
		var temp_real_name = string_replace(temp_name,"[*_ABER]","");
		var temp_text_code = string_delete(temp_real_name,1,string_length(temp_real_name)-1);
		show_debug_message("textcode : "+string(temp_text_code))
		temp_real_name = string_delete(temp_real_name,string_length(temp_real_name),1);
		show_debug_message("realname : "+string(temp_real_name))
	}
	else
	{
		var temp_real_name = temp_name;
		var temp_text_code = -4;
	}
	
	var text_code_col = c_white
	if (temp_text_code == "0")
	{
		text_code_col = #9c9ffa;
		add_nametag = " [디벨로퍼]"
	}
	else if (temp_text_code == "1")
	{
		text_code_col = #6dd0e9;
		add_nametag = " [베타테스터]"
	}
	
	
	var temp_score = LLHighscoresTopScoreList()[i+skip_list];
	temp_score = (temp_real_name == " " || temp_real_name == "" || temp_score == "0") ? "--" : temp_score;
	
	show_debug_message(string(temp_real_name)+" / "+string(LLPlayerName()))
	temp_real_name = (temp_real_name == " " || temp_real_name == "" || temp_score == "0") ? "--" : temp_real_name;
	
	var temp_rank = (i < 9) ? "0"+string(i+1) : string(i+1);

	global.unlocked_music_name_new_list[i] = string(temp_rank)+" "+string(temp_real_name+add_nametag);
	global.unlocked_music_name_new_list_rightside[i] = string(convert_score_to_rank(temp_score,0))+" | "+string(numbers_with_comma(temp_score));
	global.unlocked_music_name_new_list_color[i] = text_code_col;
	
	if (i < 10)
	{
		if (temp_real_name == global.nickname)
		{
			global.unlocked_music_name_new_list_color[i] = (text_code_col == c_white) ? merge_color(global.map_color,text_code_col,0.7) : text_code_col;
			in_top_ten = 1;
		}
	}
	else
	{
		if (in_top_ten == 0)
		{
			var temp_name = global.nickname;
			show_debug_message(temp_name);
			var add_nametag = "";
			var certain_text_code_inserted = string_pos("[*_ABER]",temp_name)
			if (certain_text_code_inserted != 0)
			{
				var temp_real_name = string_replace(temp_name,"[*_ABER]","");
				var temp_text_code = string_delete(temp_real_name,1,string_length(temp_real_name)-1);
				show_debug_message("textcode : "+string(temp_text_code))
				temp_real_name = string_delete(temp_real_name,string_length(temp_real_name),1);
				show_debug_message("realname : "+string(temp_real_name))
			}
			else
			{
				var temp_real_name = temp_name;
				var temp_text_code = -4;
			}
			
			var text_code_col = c_white
			if (temp_text_code == "0")
			{
				text_code_col = #9c9ffa;
				add_nametag = " [디벨로퍼]"
			}
			else if (temp_text_code == "1")
			{
				text_code_col = #6dd0e9;
				add_nametag = " [베타테스터]"
			}
			
			
			var temp_score = (global.t_selected_difficulty == 0) ? global.real_n_score_hardcore[global.n_map_id] : global.real_n_score[global.n_map_id];
			
			var temp_rank = LLPlayerRank();
			temp_rank = (temp_rank == "" || check_under_ten(real(temp_rank))) ? "--" : temp_rank;
			
			temp_score = (temp_rank == "--" || check_under_ten(temp_score)) ? "--" : temp_score;

			global.unlocked_music_name_new_list[i] = string(temp_rank)+" "+string(temp_real_name+add_nametag);
			global.unlocked_music_name_new_list_rightside[i] = string(convert_score_to_rank(temp_score,0))+" | "+string(numbers_with_comma(temp_score));
			global.unlocked_music_name_new_list_color[i] = (text_code_col == c_white) ? merge_color(global.map_color,text_code_col,0.7) : text_code_col;
		}
	}
}

global.new_unlocked_map_num = 11;
