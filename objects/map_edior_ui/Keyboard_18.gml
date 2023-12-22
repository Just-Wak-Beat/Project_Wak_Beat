/// @description Insert description here
// You can write your code in this editor

if (keyboard_check_pressed(vk_delete) || keyboard_check_pressed(vk_insert))
{
	clean_message_log();
	del_all_timeline += 1;
	
	if (del_all_timeline > 1)
	{
		show_message_log("('전체 타임라인'이 삭제되었습니다)");
		var tmp_directory = string(global.custom_map_file_dir[global.n_map_id])+"\\map_data.ini";
		file_delete(tmp_directory);
		
		for(var i = 0; i < array_length(global.c_map_param); i++)
		{
			global.c_map_param[i] = "";
		}
		
		instance_destroy(hitbox_parents);
		with(code)
		{
			event_user(10);
		}
		
		del_all_timeline = 0;
	}
	else
	{
		show_message_log("('전체 타임라인'을 지우시려면 한 번 더 눌러주세요)");
	}
}


