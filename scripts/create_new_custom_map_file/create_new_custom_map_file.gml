// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function create_new_custom_map_file()
{
	ini_open(string(global.custom_map_directory)+"custom_map_file_"+string(get_custom_map_num()+1)+"\\map_info.ini")
	ini_write_string("custom_n_rank","value","--");
	ini_write_string("n_rank_hardcore","value","--");
	ini_write_real("custom_n_score","value",0);
	ini_write_real("n_score_hardcore","value",0);
	ini_write_string("custom_n_artifact","value","--");
	ini_write_real("custom_detailed_difficulty","value",0);
	ini_write_real("custom_stage_map_highlight_part","value",0);
	ini_write_string("custom_stage_map_color","value","#000000");
	ini_write_string("custom_stage_map_difficulty","value","Undefined");
	ini_write_string("custom_stage_map_artist","value","Undefined");
	ini_write_string("custom_stage_map_name","value","Undefined");
	ini_write_string("custom_stage_map_map_by","value","Undefined");
	ini_write_real("custom_requirement_level","value",0);
	ini_write_real("custom_obtainable_type","value",0);
	ini_write_real("custom_stage_bpm","value",0);
	ini_close()
	
	
	show_message_log("새로운 커스텀 스테이지 생성 완료!")
	load_custom_map_files();
	load_musicList(global.n_map_list);
	//var tmp_file = get_open_filename("text file|*.txt", "");
}