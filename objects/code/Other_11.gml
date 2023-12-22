/// @description n_map_list setting
// You can write your code in this editor

if (global.title_menu_animation1 == -1)
{
	global.reload_n_map_list_value = 0
	if keyboard_check_pressed(vk_left)
	{
		global.n_map_list--
	}
	
	if keyboard_check_pressed(vk_right)
	{
		global.n_map_list++
	}
		
	if (global.n_map_list == 2)
	{
		if (global.b_map_list != 2)
		{
			load_custom_map_files();
		}
		
		if (global.mobile_mode == 1)
		{
			global.n_map_list += sign(global.n_map_list - global.b_map_list)
		}
	}
	
	var tmp_max_list = 5;
	if (global.n_map_list < 0)
	{
		global.n_map_list = tmp_max_list;
	}
	
	if (global.n_map_list > tmp_max_list)
	{
		global.n_map_list = 0;
	}
	


	load_musicList(global.n_map_list)
}
