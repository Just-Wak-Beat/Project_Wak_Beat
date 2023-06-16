/// @description Insert description here
// You can write your code in this editor
global.title_menu_animation1++



if (global.title_menu_animation1 >= 3)
{
	global.title_menu_animation1 = -1
	
	
	global.notice_title = "Just Wak & Beats 테스터 참여 감사합니다!";
	global.show_new_songs = 1;
	
	var check_new_song = 0
	
	//공지사항 메시지
	global.unlocked_music_name_new_list[check_new_song] = "피드백 해주실 내용은 다음과 같습니다"
	global.unlocked_music_name_new_list_color[check_new_song] = #c54a3d;
	check_new_song ++
	
	
	global.unlocked_music_name_new_list[check_new_song] = "- 버그"
	global.unlocked_music_name_new_list_color[check_new_song] = c_white;
	check_new_song ++
	

	global.unlocked_music_name_new_list[check_new_song] = "- 게임 랙 (혹시 랙이 있다면 PC/모바일 중 어떤건지 말씀해주세요)"
	global.unlocked_music_name_new_list_color[check_new_song] = c_white;
	check_new_song ++
	

	global.unlocked_music_name_new_list[check_new_song] = "- 조작감 혹은 불편 사항"
	global.unlocked_music_name_new_list_color[check_new_song] = c_white;
	check_new_song ++
	

	global.unlocked_music_name_new_list[check_new_song] = "- 가장 재미있었던 맵 / 가장 지루했던 맵 (여러개 중복 가능해요!)"
	global.unlocked_music_name_new_list_color[check_new_song] = c_white;
	check_new_song ++
	

	global.unlocked_music_name_new_list[check_new_song] = "- 새로운 곡 신청 (전부 다 추가되긴 어렵겠지만, 경우에 따라서 추가될 예정입니다)"
	global.unlocked_music_name_new_list_color[check_new_song] = c_white;
	check_new_song ++
	

	global.unlocked_music_name_new_list[check_new_song] = "- 이외에 다른 피드백 (게임 난이도 등등...)"
	global.unlocked_music_name_new_list_color[check_new_song] = c_white;
	check_new_song ++
	

	global.unlocked_music_name_new_list[check_new_song] = "모든 피드백은 DM으로 주세요!"
	global.unlocked_music_name_new_list_color[check_new_song] = #5595ff;
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