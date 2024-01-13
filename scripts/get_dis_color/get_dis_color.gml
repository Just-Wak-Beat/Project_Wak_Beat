// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function get_dis_color(argument0,argument1)
{
	var color_error_comp0 = (is_string(argument0)) ? hex_to_color(argument0,1) : argument0;
	var color_error_comp1 = (is_string(argument1)) ? hex_to_color(argument1,1) : argument1;
	var cannot_cal_arg0 = (!is_string(argument0) || argument0 == "" || argument0 == -4) ? 1 : 0;
	var cannot_cal_arg1 = (!is_string(argument1) || argument1 == "" || argument1 == -4) ? 1 : 0;

	if (cannot_cal_arg0 == 1 && cannot_cal_arg1 == 0)
	{
		return color_error_comp1;
	}
	else if (cannot_cal_arg0 == 0 && cannot_cal_arg1 == 1)
	{
		return color_error_comp0;
	}
	else if (cannot_cal_arg0 == 1 && cannot_cal_arg1 == 1)
	{
		return c_white;
	}
	else
	{
		var tmp = sqrt(power(color_get_red(color_error_comp0) - color_get_red(color_error_comp1),2)+power(color_get_green(color_error_comp0) - color_get_green(color_error_comp1),2)+power(color_get_blue(color_error_comp0) - color_get_blue(color_error_comp1),2));
		//show_debug_message(tmp);
		return tmp
	}
}