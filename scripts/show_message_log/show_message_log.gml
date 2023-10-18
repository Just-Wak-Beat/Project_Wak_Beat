// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

///@param text
function show_message_log(argument0)
{
	var tmp_ins = instance_create_depth(0,0,code.depth-10,obj_message_log);
	tmp_ins.text = argument0;
	
	return tmp_ins;
}