// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function load_custom_map_files()
{
	for(var i = 0; i < load_custom_map_num(); i++)
	{

		var audio_file = "already_loaded"
		ini_open(string(global.custom_map_directory)+"custom_map_file_"+string(i+1)+".ini")
		if !audio_exists(global.custom_audio_asset[i])
		{
			global.custom_stage_map_audio_name[i] = ini_read_string("custom_stage_map_audio_name","value",-4)
			global.custom_stage_map_name[i] = ini_read_string("custom_stage_map_name","value","Undefined")
			global.custom_stage_map_artist[i] = ini_read_string("custom_stage_map_artist","value","Undefined")
			global.custom_stage_map_difficulty[i] = ini_read_string("custom_stage_map_difficulty","value","Undefined")
			global.custom_stage_map_color[i] = ini_read_string("custom_stage_map_color","value",c_black);
			global.custom_stage_bpm[i] = ini_read_real("custom_stage_bpm","value",180)
			global.custom_stage_map_highlight_part[i] = ini_read_real("custom_stage_map_highlight_part","value",-4)
			global.custom_n_rank[i] = ini_read_string("custom_n_rank","value",-4)
			global.custom_detailed_difficulty[i] = ini_read_real("custom_detailed_difficulty","value",0)
			global.custom_obtainable_type[i] = ini_read_real("custom_obtainable_type","value",-4)
			global.custom_requirement_level[i] = ini_read_real("custom_requirement_level","value",-4)
			global.custom_n_artifact[i] = ini_read_string("custom_n_artifact","value","X")
			var directory = string(global.custom_map_directory)+string(global.custom_stage_map_audio_name[i])+".ogg"
			if (file_exists(directory))
			{
				audio_file = audio_create_stream(directory);
				global.custom_audio_asset[i] = audio_file;
				global.custom_map_duration[i] = floor(audio_sound_length(audio_file)*60);
			}
		}
		else
		{
			global.custom_map_duration[i] = floor(audio_sound_length(global.custom_audio_asset[i])*60);
		}
	
		if !sprite_exists(global.custom_stage_album[i])
		{
			global.custom_stage_album[i] = sprite_add(string(global.custom_map_directory)+"custom_map_album_"+string(i+1)+".png",0,false,false,256,256)
		}
		
		show_debug_message(string(global.custom_stage_map_audio_name[i])+" / "+string(global.custom_audio_asset[i])+" length : "+string(audio_sound_length(global.custom_audio_asset[i])*60))
		ini_close()
	}
}