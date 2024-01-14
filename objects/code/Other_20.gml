/// @description 커스텀 맵 데이터 저장 (현재 타임라인 기준 데이터)


global.tmp_str_map_data = "";
var map_file_dir = (global.n_map_list == 2) ? global.custom_map_file_dir[global.n_map_id] : string(global.default_directory)+"Official map files\\"+string(global.real_stage_map_audio_name[global.n_map_id]);
var tmp_directory = string(map_file_dir)+"\\map_data.ini";
ini_open(tmp_directory);

	//문자열 데이터 제작
	with(hitbox_parents)
	{
		event_user(12);
	}
	
	ini_write_string("map_data"+string(floor(global.n_progress)),"obj_data",global.tmp_str_map_data);
	global.c_map_param[global.n_progress] = global.tmp_str_map_data;
	show_debug_message("map_data_saved) "+string(global.tmp_str_map_data));
ini_close();