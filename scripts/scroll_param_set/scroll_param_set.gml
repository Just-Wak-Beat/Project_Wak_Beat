// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

///@param num
///@param name
///@param min
///@param max
///@param correction
///@param divide
///@param tagname
function scroll_param_set(argument0,argument1,argument2,argument3,argument4,argument5,argument6)
{
	global.ed_arg_name[argument0] = argument1;
	global.ed_arg_min_val[argument0] = argument2;
	global.ed_arg_max_val[argument0] = argument3;
	global.ed_arg_correction[argument0] = argument4; //0 = none, 1 = round, 2 = floor
	global.ed_arg_divide[argument0] = (argument5 == 0) ? 1 : argument5;
	global.ed_arg_tagname[argument0] = argument6;
}