/// @description Insert description here
// You can write your code in this editor
if (global.n_setting_button = -4 || global.n_setting_button = button_id) && sprite_index = spr_square
{
	//스크롤 바 길이
	var scroll_length = image_xscale*80*64
	if scroll_activated = 1 || (abs(mouse_x - x) <= scroll_length*0.5 && abs(mouse_y - y) <= image_yscale*64)
	{
		if (!audio_is_playing(setting_scroll_sfx))
		{
			audio_play_sound(setting_scroll_sfx,0,false,global.master_volume*global.sfx_volume*32)
		}
		scroll_value = (mouse_x-x+scroll_length*0.5)/scroll_length*100
		scroll_activated = 1
		scroll_value = (scroll_value < 0) ? 0 : scroll_value;
		scroll_value = (scroll_value > 100) ? 100 : scroll_value;
		global.n_setting_button = button_id
	
		if (button_id == 2)
		{
			global.master_volume = scroll_value/100
		}
		else if (button_id == 3)
		{
			global.sfx_volume = scroll_value/100
		}
		else if (button_id == 4)
		{
			global.bgm_volume = scroll_value/100
		}
		else if (button_id == 5)
		{
			global.music_sync_offset = scroll_value/100
		}
		else if (button_id == 7)
		{
			global.n_progress = floor((scroll_value/100)*global.music_duration);
			timeline_position = global.n_progress+floor(global.music_sync_offset*3*60);
			
			if (global.timeline_stop == -1 && !audio_is_playing(global.n_music_instance))
			{
				var _audio_asset = (global.n_map_list != 2) ? asset_get_index(global.n_music_name) : global.custom_audio_asset[code.n_stage];
				global.n_music_id = _audio_asset;
				global.n_music_instance = audio_play_sound(global.n_music_id,0,false,global.custom_map_volume_control*0.5*global.master_volume*global.bgm_volume*(global.mobile_mode*0.5+1))
				timeline_running = true;
			}
			
			if (audio_is_playing(global.n_music_instance))
			{
				audio_sound_set_track_position(global.n_music_instance,global.n_progress/60);
			}
		}
		else if (button_id == 100)
		{
			global.ed_arg[0] = (scroll_value/100)*20;
		}
		else if (button_id == 101)
		{
			global.ed_arg[1] = (scroll_value/100)*359;
		}
		else if (button_id == 102)
		{
			global.ed_arg[2] = (scroll_value/100)*255;
		}
		else if (button_id == 103)
		{
			global.ed_arg[3] = (scroll_value/100)*255;
		}
		else if (button_id == 104)
		{
			global.ed_arg[4] = (scroll_value/100)*255;
		}
		else if (button_id == 105)
		{
			global.ed_arg[5] = (scroll_value/100)*1200;
		}
	}
}