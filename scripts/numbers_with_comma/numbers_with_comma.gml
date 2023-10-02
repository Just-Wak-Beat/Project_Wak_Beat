// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

///@param string
function numbers_with_comma(argument0)
{
	show_debug_message(argument0)
	var tmp_length = string_length(argument0);
	var tmp_return_str = string_char_at(argument0,tmp_length);
	for(var i = 1; i < tmp_length; i++)
	{
		if (i%3 == 0)
		{
			tmp_return_str = string_char_at(argument0,tmp_length-i)+","+tmp_return_str;
		}
		else
		{
			tmp_return_str = string_char_at(argument0,tmp_length-i)+tmp_return_str;
		}
	}
	
	return tmp_return_str;
}