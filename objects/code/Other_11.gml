/// @description n_map_list setting
// You can write your code in this editor


global.reload_n_map_list_value = 0
	if keyboard_check_pressed(vk_left)
	{
	global.n_map_list--
	}
	
	if keyboard_check_pressed(vk_right)
	{
	global.n_map_list++
	}
		
	if global.n_map_list = 2 && global.mobile_mode == 1
	{
	global.n_map_list += sign(global.n_map_list - global.b_map_list)
	}
	
	if global.n_map_list < 0
	{
	global.n_map_list = 3
	}
	
	if global.n_map_list > 3
	{
	global.n_map_list = 0
	}
	
load_musicList(global.n_map_list)
load_custom_map_files()
