/// @description 현재 타임라인에 존재하는 탄막 불러오기 
// You can write your code in this editor
if (global.play_custom_map == 1 || timeline_running == false)
{
	global.tmp_str_map_data = global.c_map_param[fix_num_inside(floor(global.n_progress)-floor(global.music_sync_offset*3*60),1,global.music_duration)];
	while(string_length(global.tmp_str_map_data) >= 2)
	{
		var tmp_input = [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ];
		for(var i = 0; i < 12; i++)
		{
			var tmp_space_pos = string_pos(",",string(global.tmp_str_map_data));
			//show_debug_message("data str : "+string(global.tmp_str_map_data)+" / length : "+string(tmp_space_pos));
			tmp_input[i] = real(string_copy(global.tmp_str_map_data,0,tmp_space_pos));
			global.tmp_str_map_data = string_delete(global.tmp_str_map_data,1,tmp_space_pos);
		}

	
		//탄막 타입 기준으로 탄막 생성
		editor_mode_create_projectile(tmp_input[0],tmp_input[1],tmp_input[2],tmp_input[3],tmp_input[4],tmp_input[5],tmp_input[6],tmp_input[7],tmp_input[8],tmp_input[9],tmp_input[10],tmp_input[11]);
	
		//show_debug_message("data str : "+string(global.tmp_str_map_data));
	}
}