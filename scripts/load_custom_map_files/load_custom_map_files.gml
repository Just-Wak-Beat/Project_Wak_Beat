// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function load_custom_map_files()
{
	global.custom_map_num = get_custom_map_num();
	for(var i = 0; i < global.custom_map_num; i++)
	{
		var audio_file = "already_loaded"
		ini_open(string(global.custom_map_file_dir[i])+"\\map_info.ini")
		var audiofile_exists = " - 오디오 파일 누락됨"
		var imgfile_exists = " - 이미지 파일 누락됨"
		//////////////////////////////////////////////////////////////////////////////////////
		if !audio_exists(global.custom_audio_asset[i])
		{
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
			var _firstFile = file_find_first(string(global.custom_map_file_dir[i])+"\\*.ogg", fa_none);
			show_debug_message("_firstFile : "+string(_firstFile));
			var file_dir = string(global.custom_map_file_dir[i])+"\\"+string(_firstFile);
			if (file_exists(file_dir))
			{
				audiofile_exists = "";
				audio_file = audio_create_stream(file_dir);
				global.custom_audio_asset[i] = audio_file;
				global.custom_map_duration[i] = floor(audio_sound_length(audio_file)*60);
			}
			file_find_close();
			
			
			
			//////////////////////////////////////////////////////////////////////////////////////
			var _firstFile = file_find_first(string(global.custom_map_file_dir[i])+"\\*.png", fa_none);
			show_debug_message("_firstFile : "+string(_firstFile));
			var file_dir = string(global.custom_map_file_dir[i])+"\\"+string(_firstFile);
			var tmp_spr = spr_album;
			if (file_exists(file_dir))
			{
				tmp_spr = sprite_add_ext(file_dir,0,256,256,true);
				imgfile_exists = "";
			}
			
			
			global.custom_stage_album[i] = tmp_spr;
			file_find_close();
			//////////////////////////////////////////////////////////////////////////////////////
		}
		else
		{
			imgfile_exists = "";
			audiofile_exists = "";
			global.custom_map_duration[i] = floor(audio_sound_length(global.custom_audio_asset[i])*60);
		}
		//////////////////////////////////////////////////////////////////////////////////////
		
	
		
		
		
		show_message_log(string(global.custom_stage_map_name[i])+string(imgfile_exists)+string(audiofile_exists));
		show_debug_message(string(global.custom_stage_map_name[i])+" / "+string(global.custom_audio_asset[i])+" length : "+string(audio_sound_length(global.custom_audio_asset[i])*60))
		ini_close()
		
		if (instance_exists(obj_album_ui))
		{
			obj_album_ui.image_scale = -4;
		}
	}
}