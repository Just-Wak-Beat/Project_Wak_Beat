/// @description Insert description here
// You can write your code in this editor

if (global.select_difficulty == 0 && global.show_new_songs <= 0 && global.unlock_partner_animation_queue == 0)
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
	else if (global.sync_setting <= 0 && ((mouse_check_button_released(mb_left) && point_distance(mouse_x,mouse_y,global.c_x+104,global.c_y+660) < 80) || keyboard_check_pressed(ord("W"))))
	{
		if (global.streamer == 1)
		{
			clean_message_log();
			show_message_log("연말공모전 규정에 따라, 스트리머는 사용할 수 없는 기능입니다!");
		}
		else
		{
			with(code)
			{
				if object_index = code
				{
					event_user(3)
				}
			}
		}
	}
	else if (global.n_map_list != 2)
	{
		if (global.show_new_songs <= 0 && mouse_check_button_released(mb_left) && point_distance(mouse_x,mouse_y,global.c_x+104,global.c_y+1430) < 80)
		{
			if (global.level >= global.requirement_level[code.n_stage])
			{
				if (global.sync_setting == 0 && global.character_setting == 0 && code.gamestart == 0)
				{
					clicked_ = 1
					heart_alpha = 10
					w_alpha = 1
					w_alpha_bg = 1
				}
			}
		}
		//else if (global.total_map > 0 && global.n_map_id >= 0 && global.real_stage_map_difficulty[global.n_map_id] != "Tutorial" && global.show_new_songs <= 0 && global.sync_setting != 1 && global.character_setting != 1 && ((mouse_check_button_released(mb_left) && point_distance(mouse_x,mouse_y,global.c_x+104,global.c_y+1170) < 80) || keyboard_check_pressed(vk_tab)))
		//{
		//	if (global.nickname == "")
		//	{
		//		show_nickname_setting();
		//	}
		//	else
		//	{
		//		if (global.cannot_connect >= 10)
		//		{
		//			show_message_log("온라인 서버에 연결할 수 없습니다. 잠시 후 다시 시도 해주세요. ("+string(round(1+(global.cannot_connect-10)/3))+"s)");
		//		}
		//		else
		//		{
		//			code.automatic_reload_leaderboard = 1;
		//		}
		//	}
		//}
		else if (global.n_map_id >= 0 && global.show_new_songs <= 0 && global.sync_setting != 1 && global.character_setting != 1 && ((mouse_check_button_released(mb_left) && point_distance(mouse_x,mouse_y,global.c_x+104,global.c_y+910) < 80) || keyboard_check_pressed(ord("Q"))))
		{
			if (global.nickname == "")
			{
				show_nickname_setting();
			}
			else
			{
				if (global.cannot_connect >= 10)
				{
					show_message_log("온라인 서버에 연결할 수 없습니다. 잠시 후 다시 시도 해주세요. ("+string(round(1+(global.cannot_connect-10)/3))+"s)");
				}
				else
				{
					global.automatic_load_ranking = 0;
					code.automatic_reload_player_leaderboard = 1;
				}
			}
		}
	}
	else
	{
		if (global.show_new_songs <= 0 && global.sync_setting != 1 && global.character_setting != 1 && ((mouse_check_button_released(mb_left) && point_distance(mouse_x,mouse_y,global.c_x+104,global.c_y+1430) < 80) || keyboard_check_pressed(ord("M"))))
		{
			window_set_cursor(cr_none);
			audio_play_sound(ding_dong,0,false,global.master_volume*global.sfx_volume*2);
			global.map_editor = 1;
			code.gamestart = 1;
		}
		else if (global.show_new_songs <= 0 && global.sync_setting != 1 && global.character_setting != 1 && ((mouse_check_button_released(mb_left) && point_distance(mouse_x,mouse_y,global.c_x+104,global.c_y+1430) < 80) || (keyboard_check(vk_alt)) && keyboard_check_pressed(vk_delete)))
		{
			clean_message_log();
			delete_current_map ++;
			if (delete_current_map > 1)
			{
				var tmp_dir = global.custom_map_file_dir[global.n_map_id];
				file_delete(string(tmp_dir)+"\\map_info.ini");
				load_custom_map_files();
				ini_open(string(tmp_dir)+"\\삭제된 커스텀 유저맵.txt")
				ini_write_string("삭제된 커스텀 맵 파일 복구 방법","map_info.ini 파일을 생성하여 기존의 값을 다시 적어주면 복구 가능","");
				ini_close();
				//show_message_log(string(tmp_dir)+"\\map_info.ini");
				load_musicList(global.n_map_list);
			}
			else
			{
				show_message_log("해당 맵을 지우려면 한 번 더 눌러주세요 ("+string(global.custom_stage_map_name[global.n_map_id])+")");
			}
		}
		else if (global.n_map_id >= 0 && global.show_new_songs <= 0 && global.sync_setting != 1 && global.character_setting != 1 && ((mouse_check_button_released(mb_left) && point_distance(mouse_x,mouse_y,global.c_x+104,global.c_y+910) < 80) || keyboard_check_pressed(ord("Q"))))
		{
			if (global.nickname == "")
			{
				show_nickname_setting();
			}
			else
			{
				if (global.cannot_connect >= 10)
				{
					show_message_log("온라인 서버에 연결할 수 없습니다. 잠시 후 다시 시도 해주세요. ("+string(round(1+(global.cannot_connect-10)/3))+"s)");
				}
				else
				{
					global.automatic_load_ranking = 0;
					code.automatic_reload_player_leaderboard = 1;
				}
			}
		}
		else if (global.show_new_songs <= 0 && global.sync_setting != 1 && global.character_setting != 1 && ((mouse_check_button_released(mb_left) && point_distance(mouse_x,mouse_y,global.c_x+104,global.c_y+910) < 80) || keyboard_check_pressed(ord("N"))))
		{
			create_new_custom_map_file();
		}
	}
}
