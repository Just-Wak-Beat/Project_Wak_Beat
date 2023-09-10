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
	var directory_tmp = program_directory
	if (!directory_exists(program_directory))
	{
		directory_tmp = temp_directory
	}
	if (!directory_exists(temp_directory))
	{
		directory_tmp = working_directory
	}
	global.custom_map_directory = string(directory_tmp)+"\\Custom map files\\";
}

