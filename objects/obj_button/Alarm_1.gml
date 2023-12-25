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
		scroll_value = (global.ed_arg[0])*12;
	}
	else if (button_id == 101)
	{
		scroll_value = (global.ed_arg[1]/global.ed_arg_max_val[1])*100
	}
	else if (button_id == 102)
	{
		scroll_value = (global.ed_arg[2]/global.ed_arg_max_val[2])*100
	}
	else if (button_id == 103)
	{
		scroll_value = (global.ed_arg[3]/global.ed_arg_max_val[3])*100
	}
	else if (button_id == 104)
	{
		scroll_value = (global.ed_arg[4]/global.ed_arg_max_val[4])*100
	}
	else if (button_id == 105)
	{
		scroll_value = (global.ed_arg[5]/global.ed_arg_max_val[5])*100
	}
	else if (button_id == 106)
	{
		scroll_value = floor(global.ed_arg[6])
	}
}

can_draw = 1