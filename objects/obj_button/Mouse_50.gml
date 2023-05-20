/// @description Insert description here
// You can write your code in this editor
if (global.n_setting_button = -4 || global.n_setting_button = button_id) && sprite_index = spr_square
{
	//스크롤 바 길이
	var scroll_length = image_xscale*80*64
	if scroll_activated = 1 || (abs(mouse_x - x) <= scroll_length*0.5 && abs(mouse_y - y) <= image_yscale*64)
	{
		scroll_value = (mouse_x-x+scroll_length*0.5)/scroll_length*100
		scroll_activated = 1
		scroll_value = (scroll_value < 0) ? 0 : scroll_value;
		scroll_value = (scroll_value > 100) ? 100 : scroll_value;
		global.n_setting_button = button_id
	
		if button_id = 2
		{
			global.master_volume = scroll_value/100
		}
		else if button_id = 3
		{
			global.sfx_volume = scroll_value/100
		}
		else if button_id = 4
		{
			global.bgm_volume = scroll_value/100
		}
		else if button_id = 5
		{
			global.music_sync_offset = scroll_value/100
		}
	}
}