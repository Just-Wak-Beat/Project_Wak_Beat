/// @description Insert description here
// You can write your code in this editor


if (global.map_editor != 1)
{
	devmode_activate += 0.08;
	if (devmode_activate > 1)
	{
		global.default_directory = working_directory;
		global.custom_map_directory = string(global.default_directory)+"Custom map files\\";
		save_and_load_data(1,1);
		global.dev_mode = 1;
		show_message_log("개발자 모드가 활성화 되었습니다!");
		global.level = 999;
		set_score("NewVersion", string(global.version_real*10000), 2);
	}
}