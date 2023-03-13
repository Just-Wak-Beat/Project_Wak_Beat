/// @description Insert description here
// You can write your code in this editor
	if (global.n_setting_button = -4 || global.n_setting_button = 9999) && gamestart >= 2 && global.sync_setting_alpha >= 0.01 && global.n_progress > 1 && global.back_to_game <= 120
	{
	global.back_to_game = 0
	global.sync_setting = 0
	global.cannot_control = 0
	instance_destroy(obj_button)
	save_and_load_data(0,0)
	}
global.back_to_game = 0
global.n_setting_button = -4
