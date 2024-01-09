// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function string_digit_with_minus(argument0)
{
	argument0 = string_replace(argument0," ","");
	var last_char = string_char_at(argument0,string_length(argument0));
	if !(last_char == "0" || last_char == "1" || last_char == "2" || last_char == "3" || last_char == "4" || last_char == "5" || last_char == "6" || last_char == "7" || last_char == "8" || last_char == "9" || (string_count(".",argument0) <= 1 && last_char == ".") || (string_length(keyboard_string) > 1 && string_char_at(argument0,1) != "-" && string_length(keyboard_string) >= 1 && last_char == "-"))
	{
		argument0 = string_delete(argument0,string_length(argument0)-1,1);
	}
	
	
	if (argument0 != "")
	{
		var tmp_val = string_digits(argument0);
		if (string_char_at(argument0,1) == "-")
		{
			argument0 = "-"+string(tmp_val);
		}
		else
		{
			argument0 = tmp_val;
		}
	}
	
	return argument0;
}