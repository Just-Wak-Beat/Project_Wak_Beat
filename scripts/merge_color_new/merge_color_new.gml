// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

///@param col1
///@param col2
///@param amount
function merge_color_new(argument0,argument1,argument2)
{
	var has_problem_col1 = 0, has_problem_col2 = 0;
	if (argument0 == "" || argument0 == -4 || argument0 == " ")
	{
		has_problem_col1 = 1;
	}
	if (argument1 == "" || argument1 == -4 || argument1 == " ")
	{
		has_problem_col2 = 1;
	}
	
	if (has_problem_col1 == 0 && has_problem_col2 == 0)
	{
		return merge_color(argument0,argument1,argument2);
	}
	else if (has_problem_col1 == 1 && has_problem_col2 == 0)
	{
		return argument1;
	}
	else if (has_problem_col1 == 0 && has_problem_col2 == 1)
	{
		return argument0;
	}
	else
	{
		return c_black;
	}
}