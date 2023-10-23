// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function get_dis_color(argument0,argument1)
{
	var tmp = sqrt(power(color_get_red(argument0) - color_get_red(argument1),2)+power(color_get_green(argument0) - color_get_green(argument1),2)+power(color_get_blue(argument0) - color_get_blue(argument1),2));
	//show_debug_message(tmp);

	return tmp
}