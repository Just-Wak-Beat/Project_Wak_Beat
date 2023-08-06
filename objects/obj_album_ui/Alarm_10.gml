/// @description 처음 알림 메시지
// You can write your code in this editor
if (global.dev_mode == 1)
{
	global.artifact_owned[11] = 99999
}



global.title_menu_animation1++

window_set_cursor(cr_default)

if (global.title_menu_animation1 >= 3)
{
	global.title_menu_animation1 = -1;
	
	
	global.notice_title = "조작법 가이드";
	global.show_new_songs = 1;
	
	var check_new_song = 0;
	
	//공지사항 메시지
	global.unlocked_music_name_new_list[check_new_song] = (global.mobile_mode == 0) ? "키보드 방향키 - 선택" : "화면 스크롤 - 선택"
	global.unlocked_music_name_new_list_color[check_new_song] = c_white;
	check_new_song ++
	
	
	global.unlocked_music_name_new_list[check_new_song] = (global.mobile_mode == 0) ? "Enter혹은 Space - 확인" : "화면 터치 - 확인"
	global.unlocked_music_name_new_list_color[check_new_song] = c_white;
	check_new_song ++
	

	
	global.new_unlocked_map_num = check_new_song;
	
	global.nickname = string_replace_all(global.nickname," ","");


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
	LootLockerTurnOnAutoRefresh();
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

global.can_change_music_list = 1;
