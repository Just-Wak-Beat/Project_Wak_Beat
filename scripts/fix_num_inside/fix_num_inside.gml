// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information


///@param val
///@param min
///@param max
function fix_num_inside(argument0,argument1,argument2)
{
	if (argument0 < argument1)
	{
		return argument1;
	}
	else if (argument0 > argument2)
	{
		return argument2;
	}
	else
	{
		return argument0;
	}
}