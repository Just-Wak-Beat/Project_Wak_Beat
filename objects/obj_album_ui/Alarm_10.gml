/// @description Insert description here
// You can write your code in this editor
global.title_menu_animation1++



if (global.title_menu_animation1 >= 3)
{
	global.title_menu_animation1 = -1
}
else
{
	alarm[10] = 75
}

if (global.title_menu_animation1 == 2)
{
	bpm_timer += 10
	angle_moving_timer = 0
}