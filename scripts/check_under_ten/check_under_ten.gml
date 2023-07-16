// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function check_under_ten(argument0)
{
	if (argument0 == "0" || argument0 == "1" || argument0 == "2" || argument0 == "3" || argument0 == "4" || argument0 == "5" || argument0 == "6" || argument0 == "7" || argument0 == "8" || argument0 == "9" || argument0 == "10")
	{
		return true;
	}
	else
	{
		return false;
	}
}