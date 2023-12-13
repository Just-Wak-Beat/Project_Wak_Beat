/// @description Load game data & first settings
// You can write your code in this editor

save_and_load_data(1,1)
event_user(0)

if global.dev_mode != 1
{
	if !file_exists(string(global.custom_map_directory)+"settings.ini")
	{
		ini_open_protect(string(global.custom_map_directory)+"settings.ini");
		ini_write_string("user","none","none");
		ini_close_protect();
	}
}
else
{
	global.default_directory = working_directory;
	global.custom_map_directory = string(global.default_directory)+"\\Custom map files\\";
}

