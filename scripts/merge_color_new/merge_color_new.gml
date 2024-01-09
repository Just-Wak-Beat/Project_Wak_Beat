// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

///@param col1
///@param col2
///@param amount
function merge_color_new(argument0,argument1,argument2)
{
	//show_debug_message("color : "+string(argument0)+" / "+string(argument1));
	global.merge_col1 = argument0;
	global.merge_col2 = argument1;
	global.merge_col3 = argument2;
	var has_problem_col1 = 0, has_problem_col2 = 0;
	if (!is_real(global.merge_col1))
	{
		global.merge_col1 = hex_to_color(global.merge_col1,1);
	}
	
	if (!is_real(global.merge_col2))
	{
		global.merge_col2 = hex_to_color(global.merge_col2,1);
	}
	
	if (global.merge_col1 == "" || global.merge_col1 == -4 || global.merge_col1 == " ")
	{
		has_problem_col1 = 1;
	}
	if (global.merge_col2 == "" || global.merge_col2 == -4 || global.merge_col2 == " ")
	{
		has_problem_col2 = 1;
	}
	
	if (has_problem_col1 == 0 && has_problem_col2 == 0)
	{
		return merge_color(global.merge_col1,global.merge_col2,global.merge_col3);
	}
	else if (has_problem_col1 == 1 && has_problem_col2 == 0)
	{
		return global.merge_col2;
	}
	else if (has_problem_col1 == 0 && has_problem_col2 == 1)
	{
		return global.merge_col1;
	}
	else
	{
		return c_black;
	}
}