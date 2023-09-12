/// @description Insert description here
// You can write your code in this editor



if (keyboard_check(vk_anykey) || global.touch_to_skip == 1)
{
	if (credit_text_alpha <= 0)
	{
		if (global.show_credit > 1)
		{
			credit_text_alpha2 = 1;
			credit_text_alpha3 = 1;
			credit_text_alpha4 = 1;
			global.show_credit = 0;
			alarm[8] = 80;
			alarm[11] = 35;
		}
	}
	else
	{
		if (global.show_credit <= 1)
		{
			credit_text_alpha = 1;
			global.show_credit = 2;
		}
	}
	global.touch_to_skip = 0;
}



if (global.show_credit == 1)
{
	credit_text_alpha += (1.1 - credit_text_alpha)*0.025
	window_set_cursor(cr_none)
}
else if (global.show_credit == 2)
{
	credit_text_alpha += (-0.01 - credit_text_alpha)*0.05
	if (credit_text_alpha <= 0)
	{
		if (credit_text_alpha2 < 0)
		{
			credit_text_alpha2 = 0;
			audio_play_sound(glow_sfx,0,false,global.master_volume*global.sfx_volume)
		}
		credit_text_alpha2 += (1.01 - credit_text_alpha2)*0.025
	}
		
	if (credit_text_alpha2 >= 0.9)
	{
		global.show_credit = 3
	}
}
else if (global.show_credit == 3)
{
	credit_text_alpha3 += (1.01 - credit_text_alpha3)*0.025
	if (credit_text_alpha3 >= 0.9)
	{
		global.show_credit = 4
	}
}
else if (global.show_credit == 4)
{
	credit_text_alpha4 += (1.01 - credit_text_alpha4)*0.025
	if (credit_text_alpha4 >= 0.99)
	{
		global.show_credit = 0
		alarm[8] = 80
		alarm[11] = 35
	}
}
else
{
	credit_text_alpha4 += (-0.01 - credit_text_alpha4)*0.05
	credit_text_alpha3 += (-0.01 - credit_text_alpha3)*0.05
	credit_text_alpha2 += (-0.01 - credit_text_alpha2)*0.05
}


if global.show_title_menu != 0 && global.show_title_menu < 1
{
	global.show_title_menu -= 0.001
}

if (loading_now >= 0)
{
	loading_now += (1 - loading_now)*0.05
}

if (global.title_menu_animation1 == 1)
{
	blind_xx_final += (1.5 - blind_xx_final)*0.1
	global.show_title_menu += (0.01 - global.show_title_menu)*0.05
}
else if (global.title_menu_animation1 == 2)
{
	global.show_title_menu = 0
	blind_xx_start += (1.5 - blind_xx_start)*0.1
}


if ding_dong_animation > 0 && ding_dong_animation < 50
{
	ding_dong_animation++
}

if (ding_dong_animation == 5)
{
	var random_xx = irandom_range(global.c_x+960,room_width*0.5)
	var random_yy = irandom_range(room_height*0.5,global.c_h-960)
	var _ef = instance_create_depth(random_xx,random_yy,depth-10,explosion_effect)
	_ef.image_xscale = 1
	_ef.image_yscale = 1
	_ef.t_scale = 2
	_ef.image_blend = c_white
}
else if (ding_dong_animation == 25)
{
	var random_xx = irandom_range(room_width*0.6,global.c_w-960)
	var random_yy = irandom_range(global.c_y+960,room_height*0.5)
	var _ef = instance_create_depth(random_xx,random_yy,depth-10,explosion_effect)
	_ef.image_xscale = 2
	_ef.image_yscale = 2
	_ef.t_scale = 4
	_ef.image_blend = c_white
}