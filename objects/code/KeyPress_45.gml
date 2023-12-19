/// @description Insert description here
// You can write your code in this editor



devmode_activate += 0.08;
if (devmode_activate > 1)
{
	global.dev_mode = 1;
	show_message_log("개발자 모드가 활성화 되었습니다!");
	global.default_directory = working_directory;
	global.custom_map_directory = string(global.default_directory)+"\\Custom map files\\";
}