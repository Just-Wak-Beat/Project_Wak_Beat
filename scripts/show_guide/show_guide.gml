// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function show_guide(argument0)
{
	clean_guide_text();
	global.saved_notice_title = argument0;
	global.can_show_guide_mes = 1;
	show_debug_message(argument0)


	global.back_to_game = 0;
	global.sync_setting = 0;
	gamestart = 0;
	instance_destroy(obj_button);
	window_set_cursor(cr_none);
	
	save_and_load_data(0,0)
}