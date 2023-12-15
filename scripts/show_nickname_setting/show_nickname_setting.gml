// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function show_nickname_setting()
{
	global.notice_title = "게임을 시작하기 전...";
	global.notice_title_sub = "온라인 랭킹에 사용할 이름을 설정해주세요!";
	global.unlocked_music_name_new_list[0] = "";
	global.unlocked_music_name_new_list_color[0] = c_white
	global.unlocked_music_name_new_list[1] = "";
	keyboard_string = "";
	global.unlocked_music_name_new_list_color[1] = #1f1f1f
	global.unlocked_music_name_new_list[2] = "(입력이 완료되었다면 화면을 꾹 홀드하거나, Space를 홀드하여 주세요)";
	global.unlocked_music_name_new_list_color[2] = c_white
	global.unlocked_music_name_new_list[3] = "[영문자+숫자만 입력 가능, 이후 변경 불가능]";
	global.unlocked_music_name_new_list_color[3] = merge_color(#1f1f1f,c_white,0.1);
				
	global.unlocked_music_name_new_list_rightside[0] = "";
	global.unlocked_music_name_new_list_color_rightside[0] = c_white;
	global.unlocked_music_name_new_list_rightside[1] = "";
	global.unlocked_music_name_new_list_color_rightside[1] = c_white;
	global.unlocked_music_name_new_list_rightside[2] = "";
	global.unlocked_music_name_new_list_color_rightside[2] = c_white;
	global.unlocked_music_name_new_list_rightside[3] = "";
	global.unlocked_music_name_new_list_color_rightside[3] = c_white;
				
	global.show_new_songs = 1;
	global.new_unlocked_map_num = 4;
				
	if (global.mobile_mode == 1 && !keyboard_virtual_status())
	{
		keyboard_virtual_show(kbv_type_ascii, kbv_returnkey_default, kbv_autocapitalize_none, false);
	}
}