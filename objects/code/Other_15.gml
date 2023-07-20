/// @description 랭크 표시
// You can write your code in this editor



show_debug_message("showing ranking now")
var temp_difficulty_str = (global.t_selected_difficulty == 0) ? " (Hardcore)" : "";
global.notice_title = "Ranking";
global.notice_title_sub = "<    "+string(global.n_music_title+temp_difficulty_str)+"    >";




for(var i = 0; i < 100; i++)
{
	show_debug_message(LLHighscoresTopNamesList()[i]);
}


var in_top_ten = 0;
for(var i = 0; i < 11; i++)
{
	var temp_name = LLHighscoresTopNamesList()[i];
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
	
	
	var temp_score = LLHighscoresTopScoreList()[i];
	temp_score = (temp_real_name == " " || temp_real_name == "" || temp_score == "0") ? "--" : temp_score;
	
	show_debug_message(string(temp_real_name)+" / "+string(LLPlayerName()))
	temp_real_name = (temp_real_name == " " || temp_real_name == "" || temp_score == "0") ? "--" : temp_real_name;
	
	var temp_rank = (i < 9) ? "0"+string(i+1) : string(i+1);

	global.unlocked_music_name_new_list[i] = string(temp_rank)+" "+string(temp_real_name+add_nametag);
	global.unlocked_music_name_new_list_rightside[i] = temp_score;
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
			
			
			var temp_score = LLPlayerScore();
			
			var temp_rank = LLPlayerRank();
			temp_rank = (temp_rank == "" || check_under_ten(temp_rank)) ? "--" : temp_rank;
			
			temp_score = (temp_rank == "--" || check_under_ten(temp_score)) ? "--" : temp_score;

			global.unlocked_music_name_new_list[i] = string(temp_rank)+" "+string(temp_real_name+add_nametag);
			global.unlocked_music_name_new_list_rightside[i] = temp_score;
			global.unlocked_music_name_new_list_color[i] = (text_code_col == c_white) ? merge_color(global.map_color,text_code_col,0.7) : text_code_col;
		}
	}
}

global.new_unlocked_map_num = 11;
