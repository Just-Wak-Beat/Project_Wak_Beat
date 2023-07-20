/// @description Insert description here
// You can write your code in this editor
if global.n_map_list != 2
{
	if (global.select_difficulty = 0 && global.show_new_songs <= 0)
	{
		if (((mouse_check_button_released(mb_left) && point_distance(mouse_x,mouse_y,global.c_x+104,global.c_y+400) < 80 || keyboard_check_pressed(vk_escape) || keyboard_check_pressed(vk_backspace))))
		{
			with(code)
			{
				if object_index = code
				{
					if (global.character_setting <= 0)
					{
						event_user(2)
					}
					else
					{
						event_user(3)
					}
				}
			}
		}
		else if (global.sync_setting <= 0 && ((mouse_check_button_released(mb_left) && point_distance(mouse_x,mouse_y,global.c_x+104,global.c_y+660) < 80) || keyboard_check_pressed(ord("Q"))))
		{
			with(code)
			{
				if object_index = code
				{
					event_user(3)
				}
			}
		}
		else if (global.n_map_list != 2 && global.real_stage_map_difficulty[global.n_map_id] != "Tutorial" && global.show_new_songs <= 0 && global.sync_setting != 1 && global.character_setting != 1 && ((mouse_check_button_released(mb_left) && point_distance(mouse_x,mouse_y,global.c_x+104,global.c_y+920) < 80) || keyboard_check_pressed(vk_tab)))
		{
			if (global.nickname == "")
			{
				global.notice_title = "잠시만요!";
				global.notice_title_sub = "온라인 랭킹에 사용할 이름을 설정해주세요!";
				global.unlocked_music_name_new_list[0] = "";
				global.unlocked_music_name_new_list_color[0] = c_white
				global.unlocked_music_name_new_list[1] = "(입력이 완료되었다면 화면을 꾹 홀드하거나, Space를 홀드하여 주세요)";
				keyboard_string = "";
				global.unlocked_music_name_new_list_color[1] = merge_color(c_black,c_white,0.7);
				global.unlocked_music_name_new_list[2] = "(입력이 완료되었다면 화면을 꾹 홀드하거나, Space를 홀드하여 주세요)";
				global.unlocked_music_name_new_list_color[2] = c_white
				global.unlocked_music_name_new_list[3] = "[이후 변경이 불가능하니 신중하게 정해주세요]";
				global.unlocked_music_name_new_list_color[3] = merge_color(c_black,c_white,0.4);
				global.show_new_songs = 1;
				global.new_unlocked_map_num = 4;
				
				if (global.mobile_mode == 1 && !keyboard_virtual_status())
				{
					keyboard_virtual_show(kbv_type_ascii, kbv_returnkey_default, kbv_autocapitalize_none, false);
				}
			}
			else
			{
				code.automatic_reload_leaderboard = 1
				global.open_ranking = 1;
			}
		}
	}
}
