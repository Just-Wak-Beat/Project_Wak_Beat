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
		else if (global.n_map_list != 2 && global.show_new_songs <= 0 && mouse_check_button_released(mb_left) && point_distance(mouse_x,mouse_y,global.c_x+104,global.c_y+910) < 80)
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
		else if (global.n_map_list != 2 && global.n_map_id >= 0 && global.real_stage_map_difficulty[global.n_map_id] != "Tutorial" && global.show_new_songs <= 0 && global.sync_setting != 1 && global.character_setting != 1 && ((mouse_check_button_released(mb_left) && point_distance(mouse_x,mouse_y,global.c_x+104,global.c_y+1170) < 80) || keyboard_check_pressed(vk_tab)))
		{
			if (global.nickname == "")
			{
				show_nickname_setting();
			}
			else
			{
				code.automatic_reload_leaderboard = 1
				global.open_ranking = 1;
			}
		}
	}
}
