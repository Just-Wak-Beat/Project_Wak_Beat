/// @description Insert description here
// You can write your code in this editor
if (global.n_setting_button = -4 || global.n_setting_button = button_id) && global.sync_setting = 1 && sprite_index != spr_square
{
	image_xscale = 0.15
	image_yscale = 0.15
	audio_play_sound(favorite_sfx,0,false,global.master_volume*global.sfx_volume*2)

	if (button_id == 0)
	{
		if global.mobile_mode != 1
		{
			n_screen_width = window_get_width()
			n_screen_height = window_get_height()
			n_full_screen = window_get_fullscreen()
			window_set_fullscreen(!n_full_screen)
			window_set_size(window_get_width(),window_get_height())
			alarm[0] = 30
		}
		else
		{
			alarm[10] = 60
		}
	}
	else if (button_id == 1)
	{
		if global.mobile_mode == 0
		{
			set_window_size(window_get_width(),window_get_height(),window_get_fullscreen(),false);
		}
	}
	else if (button_id == 6)
	{
		if (global.mobile_mode == 0)
		{
			if (code.gamestart == 2 && global.n_progress > 1)
			{
				//곡 리스타트
				event_user(2);
				with(code)
				{
					event_user(2);
				}
			}
			else
			{
				alarm[10] = 60
			}
		}
		else
		{
			if (code.gamestart == 2 && global.n_progress > 1)
			{
				//곡 리스타트
				event_user(2);
			}
			
			with(code)
			{
				event_user(2);
			}
		}
	}
}