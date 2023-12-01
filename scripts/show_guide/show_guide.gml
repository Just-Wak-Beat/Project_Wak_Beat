// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function show_guide(argument0)
{
	global.saved_notice_title = argument0;
	global.can_show_guide_mes = 1;
	show_debug_message(argument0)
	
	save_and_load_data(0,0)
}