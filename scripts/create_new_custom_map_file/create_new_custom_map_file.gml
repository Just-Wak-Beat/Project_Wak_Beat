// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function create_new_custom_map_file()
{
	ini_open(string(global.custom_map_directory)+"custom_map_file_"+string(load_custom_map_num()+1)+"\\map_info.ini")
	ini_write_string("custom_n_rank","value","--");
	ini_write_string("n_rank_hardcore","value","--");
	ini_write_string("custom_n_score","value","--");
	ini_write_string("n_score_hardcore","value","--");
	ini_write_string("custom_n_artifact","value","--");
	ini_write_real("custom_detailed_difficulty","value",0);
	ini_write_real("custom_stage_map_highlight_part","value",0);
	ini_write_string("custom_stage_map_audio_name","value","");
	ini_write_string("custom_stage_map_color","value","");
	ini_write_string("custom_stage_map_difficulty","value","");
	ini_write_string("custom_stage_map_artist","value","");
	ini_write_string("custom_stage_map_name","value","");
	ini_close()
	
	//var tmp_file = get_open_filename("text file|*.txt", "");
}