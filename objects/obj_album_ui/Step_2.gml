/// @description Insert description here
// You can write your code in this editor

if (global.select_difficulty = 0)
{
	if (mouse_check_button_released(mb_left) && point_distance(mouse_x,mouse_y,global.c_x+104,global.c_y+400) < 80)
	{
		if global.sync_setting <= 0 && global.character_setting <= 0
		{
			with(code)
			{
				if object_index = code
				{
					event_user(2)
				}
			}
		}
		else
		{
			global.character_setting = 1
			alarm[3] = 1
			alarm[2] = 1
		}
	}
	else if (mouse_check_button_released(mb_left) && point_distance(mouse_x,mouse_y,global.c_x+104,global.c_y+660) < 80) || keyboard_check_pressed(ord("Q"))
	{
		if global.sync_setting <= 0 && global.character_setting <= 0
		{
			with(code)
			{
				if object_index = code
				{
					event_user(3)
				}
			}
		}
		else
		{
			global.sync_setting = 1
			alarm[2] = 1
			alarm[3] = 1
		}
	}
}