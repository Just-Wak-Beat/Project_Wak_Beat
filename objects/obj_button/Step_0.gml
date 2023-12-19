/// @description Insert description here
// You can write your code in this editor
if instance_exists(obj_album_ui)
{
	depth = obj_album_ui.depth-100;
}
else
{
	depth = (button_id < 100) ? code.depth-100 : map_edior_ui.depth+12;
}

//세밀한 값 조정 (스크롤)
if (button_id >= 100 && sprite_index != spr_spuare_outline_full_mask)
{
	if (scroll_activated > 0 && keyboard_check(vk_shift))
	{
		tiny_value_scrolling += (1 - tiny_value_scrolling)*0.3;
		global.tiny_value_scrolling_now += (1 - global.tiny_value_scrolling_now)*0.3;
		depth = map_edior_ui.depth+1;
	}
	else
	{
		tiny_value_scrolling += (-0.01 - tiny_value_scrolling)*0.3;
	}
}


if (sprite_index == spr_circle)
{
	image_xscale += (0.2 - image_xscale)*0.1
	image_yscale += (0.2 - image_yscale)*0.1
}
else if (sprite_index == spr_triangle)
{
	image_xscale += (0.17 - image_xscale)*0.1
	image_yscale += (0.17 - image_yscale)*0.1
}




if (button_id != 7 && button_id < 100)
{
	if (global.sync_setting == 0 && global.sync_setting_alpha < 0.01)
	{
		instance_destroy();
	}

	
	if (global.n_setting_button != -4 && global.n_setting_button != button_id)
	{
		image_alpha += (0.2*global.sync_setting_alpha - image_alpha)*0.2
	}
	else
	{
		if (global.sync_setting <= 0 && global.n_progress > 0)
		{
			global.sync_setting_alpha = 0;
			instance_destroy();
		}
		image_alpha += (global.sync_setting_alpha - image_alpha)*0.2
	}
}
else
{
	if (button_id == 7)
	{
		scroll_value = (global.n_progress/global.music_duration)*100
	
		if (global.n_progress >= global.music_duration-1)
		{
			audio_stop_sound(global.n_music_instance);
		}
	}
	
	if (button_id == 106)
	{
		if (scroll_value == 1)
		{
			image_alpha += (1 - image_alpha)*0.2
		}
		else
		{
			image_alpha += (0.5 - image_alpha)*0.2
		}
	}
	else
	{
		if (global.n_setting_button == button_id)
		{
			image_alpha += (1 - image_alpha)*0.2
		}
		else
		{
			image_alpha += (0.5 - image_alpha)*0.2
		}
	}
}
