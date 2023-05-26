/// @description Insert description here
// You can write your code in this editor

if (global.select_difficulty = 0 && mouse_check_button_released(mb_left) && point_distance(mouse_x,mouse_y,global.c_x+104,global.c_y+300) < 80)
{
	if global.sync_setting = 0
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
		alarm[2] = 1
	}
}