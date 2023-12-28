// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
///@param nickname
function decode_nametag(argument0)
{
	var temp_text_code = -4;
	show_debug_message(argument0);
	var certain_text_code_inserted = string_pos("3S4n92jfA",argument0)
	var add_nametag = "";
	var temp_real_name = "";
	if (certain_text_code_inserted != 0)
	{
		temp_real_name = string_replace(argument0,"3S4n92jfA","");
		temp_text_code = string_delete(temp_real_name,1,string_length(temp_real_name)-1);
		//show_debug_message("textcode : "+string(temp_text_code))
		temp_real_name = string_delete(temp_real_name,string_length(temp_real_name),1);
		//show_debug_message("realname : "+string(temp_real_name))
	}
	else
	{
		temp_real_name = argument0;
	}
	
	
	var text_code_col = c_white
	if (temp_text_code == "0")
	{
		text_code_col = #9c9ffa;
		add_nametag = " [디벨로퍼]"
	}
	else if (temp_text_code == "2")
	{
		text_code_col = global.player_color;
		add_nametag = " [스트리머]"
	}
	else if (temp_text_code == "4")
	{
		text_code_col = #33f363;
		add_nametag = " [후원자]"
	}
	else if (temp_text_code == "3")
	{
		text_code_col = #dc9ffa;
		add_nametag = " [커스텀맵 디벨로퍼]"
	}
	else if (temp_text_code == "1")
	{
		text_code_col = #6dd0e9;
		add_nametag = " [베타테스터]"
	}
	
	
	global.nametag_script_return0 = temp_real_name;
	global.nametag_script_return1 = temp_text_code;
	global.nametag_script_return2 = text_code_col;
	global.nametag_script_return3 = add_nametag;
	
	return true;
}
