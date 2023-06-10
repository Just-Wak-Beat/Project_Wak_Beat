/// @description Insert description here
// You can write your code in this editor
global.title_menu_animation1++



if (global.title_menu_animation1 >= 3)
{
	global.title_menu_animation1 = -1
	
	
	global.notice_title = "공지!";
	global.show_new_songs = 1;
	
	var check_new_song = 0
	
	//공지사항 메시지
	check_new_song ++
	global.unlocked_music_name_new_list[check_new_song] = "가나다라마바사아자차카타파하"
	global.unlocked_music_name_new_list_color[check_new_song] = c_red;
	
	check_new_song ++
	global.unlocked_music_name_new_list[check_new_song] = "가나다라마바사아자차카타파하"
	global.unlocked_music_name_new_list_color[check_new_song] = c_green;
	
	check_new_song ++
	global.unlocked_music_name_new_list[check_new_song] = "가나다라마바사아자차카타파하"
	global.unlocked_music_name_new_list_color[check_new_song] = c_blue;
	
	check_new_song ++
	global.unlocked_music_name_new_list[check_new_song] = "가나다라마바사아자차카타파하"
	global.unlocked_music_name_new_list_color[check_new_song] = c_white;
	
	
	global.new_unlocked_map_num = check_new_song;
}
else
{
	alarm[10] = 75
}

if (global.title_menu_animation1 == 1)
{
	audio_play_sound(show_rank_sfx,0,false,global.sfx_volume*global.master_volume,0.23)
}

if (global.title_menu_animation1 == 2)
{
	bpm_timer += 10
	angle_moving_timer = 0
}