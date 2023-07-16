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
	
	var temp_score = LLHighscoresTopScoreList()[i];
	temp_score = (temp_name == " " || temp_name == "" || temp_score == "0") ? "--" : temp_score;
	
	show_debug_message(string(temp_name)+" / "+string(LLPlayerName()))
	temp_name = (temp_name == " " || temp_name == "" || temp_score == "0") ? "--" : temp_name;
	
	var temp_rank = (i < 9) ? "0"+string(i+1) : string(i+1);

	global.unlocked_music_name_new_list[i] = string(temp_rank)+" "+string(temp_name);
	global.unlocked_music_name_new_list_rightside[i] = temp_score;
	global.unlocked_music_name_new_list_color[i] = c_white;
	
	if (i < 10)
	{
		if (temp_name == global.nickname)
		{
			global.unlocked_music_name_new_list_color[i] = merge_color(global.map_color,c_white,0.7);
			in_top_ten = 1;
		}
	}
	else
	{
		if (in_top_ten == 0)
		{
			var temp_name = global.nickname;
			
			var temp_score = LLPlayerScore();
			
			var temp_rank = LLPlayerRank();
			temp_rank = (temp_rank == "" || check_under_ten(temp_rank)) ? "--" : temp_rank;
			
			temp_score = (temp_rank == "--" || check_under_ten(temp_score)) ? "--" : temp_score;

			global.unlocked_music_name_new_list[i] = string(temp_rank)+" "+string(temp_name);
			global.unlocked_music_name_new_list_rightside[i] = temp_score;
			global.unlocked_music_name_new_list_color[i] = merge_color(global.map_color,c_white,0.7);
		}
	}
}

global.new_unlocked_map_num = 11;
