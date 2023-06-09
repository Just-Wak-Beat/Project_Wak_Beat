/// @description Insert description here
// You can write your code in this editor
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
	var _ef = instance_create_depth(room_width*0.5,room_height*0.5,depth-10,explosion_effect)
	_ef.image_xscale = 4
	_ef.image_yscale = 4
	_ef.t_scale = 8
	_ef.image_blend = c_white
}
else if (ding_dong_animation == 25)
{
	var _ef = instance_create_depth(room_width*0.5,room_height*0.5,depth-10,explosion_effect)
	_ef.image_xscale = 2
	_ef.image_yscale = 2
	_ef.t_scale = 4
	_ef.image_blend = c_white
}