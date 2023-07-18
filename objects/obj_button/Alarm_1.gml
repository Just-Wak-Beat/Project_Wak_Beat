/// @description Insert description here
// You can write your code in this editor
if sprite_index = spr_square
{
	if button_id = 2
	{
		scroll_value = global.master_volume*100
	}
	else if button_id = 3
	{
		scroll_value = global.sfx_volume*100
	}
	else if button_id = 4
	{
		scroll_value = global.bgm_volume*100
	}
	else if button_id = 5
	{
		scroll_value = global.music_sync_offset*100
	}
}

can_draw = 1