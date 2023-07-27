/// @description 처음 알림 메시지
// You can write your code in this editor
global.title_menu_animation1++

window_set_cursor(cr_default)

if (global.title_menu_animation1 >= 3)
{
	global.title_menu_animation1 = -1
	
	
	global.notice_title = "조작법 가이드";
	global.show_new_songs = 1;
	
	var check_new_song = 0
	
	//공지사항 메시지
	global.unlocked_music_name_new_list[check_new_song] = (global.mobile_mode == 0) ? "키보드 방향키 - 선택" : "화면 스크롤 - 선택"
	global.unlocked_music_name_new_list_color[check_new_song] = c_white;
	check_new_song ++
	
	
	global.unlocked_music_name_new_list[check_new_song] = (global.mobile_mode == 0) ? "Enter혹은 Space - 확인" : "화면 터치 - 확인"
	global.unlocked_music_name_new_list_color[check_new_song] = c_white;
	check_new_song ++
	

	
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