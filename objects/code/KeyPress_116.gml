/// @description Insert description here
// You can write your code in this editor
if (global.dev_mode == 1)
{
	obj_album_ui.result_alpha1 = 0
	obj_album_ui.result_alpha2 = 0
	var check_new_song = 0;
	global.notice_title = "Result";
	var temp_highscore = (global.t_selected_difficulty == 1) ? global.real_n_score[global.n_map_id] : global.real_n_score_hardcore[global.n_map_id];
	global.unlocked_music_name_new_list[check_new_song] = "Rank";
	global.unlocked_music_name_new_list_color[check_new_song] = #ff1f77;
	global.unlocked_music_name_new_list_rightside[check_new_song] = string(global.result_rank);
	global.unlocked_music_name_new_list_color_rightside[check_new_song] = c_white
	check_new_song++;
		
	global.unlocked_music_name_new_list[check_new_song] = "Score";
	global.unlocked_music_name_new_list_color[check_new_song] = #fced00;
	global.unlocked_music_name_new_list_rightside[check_new_song] = string(global.result_score);
	global.unlocked_music_name_new_list_color_rightside[check_new_song] = c_white
	check_new_song++;
			
	global.unlocked_music_name_new_list[check_new_song] = "Hi-Score";
	global.unlocked_music_name_new_list_color[check_new_song] = #76bc00;
	global.unlocked_music_name_new_list_rightside[check_new_song] = string(temp_highscore);
	global.unlocked_music_name_new_list_color_rightside[check_new_song] = c_white
	check_new_song++;
		
		
	global.unlocked_music_name_new_list[check_new_song] = "[랭크("+string(global.result_rank)+") + 대쉬로 피한 탄막(x"+string(global.result_obstacle)+")에 의한 점수]";
	global.unlocked_music_name_new_list_color[check_new_song] = merge_color(c_white,c_black,0.2);
	check_new_song++;
		
	global.unlocked_music_name_new_list[check_new_song] = "___";
	global.unlocked_music_name_new_list_rightside[check_new_song] = "";
	global.unlocked_music_name_new_list_color[check_new_song] = c_white;
	check_new_song++;
			
	global.result_score = 0;
	global.show_new_songs = 1;
	global.t_b_alpha = -0.01;
	global.t_new_song_scroll = 0
	global.new_song_scroll = 0
	global.new_unlocked_map_num = check_new_song;
}