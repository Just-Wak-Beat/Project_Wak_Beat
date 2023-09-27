// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function fix_num(argument0)
{
	var tmp = argument0;
	if (tmp > 1)
	{
		tmp = 1;
	}
	else if (tmp < 0)
	{
		tmp = 0;
	}
	
	return tmp;
}