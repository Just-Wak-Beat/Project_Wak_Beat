// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

///@param value
///@param max_dis
function check_distance(argument0,argument1)
{
	if (argument0 > argument1)
	{
		return argument1;
	}
	else
	{
		return argument0;
	}
}