/// @description Insert description here
// You can write your code in this editor
if (sprite_index == spr_square || sprite_index == spr_spuare_outline_full_mask)
{
	if (button_id == 2)
	{
		scroll_value = global.master_volume*100
	}
	else if (button_id == 3)
	{
		scroll_value = global.sfx_volume*100
	}
	else if (button_id == 4)
	{
		scroll_value = global.bgm_volume*100
	}
	else if (button_id == 5)
	{
		scroll_value = global.music_sync_offset*100
	}
	else if (button_id == 100)
	{
		scroll_value = (global.ed_arg[0]/20)*100
	}
	else if (button_id == 101)
	{
		scroll_value = (global.ed_arg[1]/360)*100
	}
	else if (button_id == 102)
	{
		scroll_value = (global.ed_arg[2]/255)*100
	}
	else if (button_id == 103)
	{
		scroll_value = (global.ed_arg[3]/255)*100
	}
	else if (button_id == 104)
	{
		scroll_value = (global.ed_arg[4]/255)*100
	}
	else if (button_id == 105)
	{
		scroll_value = (global.ed_arg[5]/1200)*100
	}
	else if (button_id == 106)
	{
		scroll_value = floor(global.ed_arg[6])
	}
}

can_draw = 1