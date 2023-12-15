/// @description 탄막 삭제 이벤트
// You can write your code in this editor


global.editor_hitbox = -1;
global.editor_selected_type = 20;
if (n_selected.object_index == hitbox_15) //지렁이 탄막 지우기
{
	for(var i = 1; i < n_selected.body_num; i++)
	{
		var target = n_selected.id_num[i];
		instance_destroy(target)
	}
}
else if (n_selected.object_index == hitbox_savepoint) //세이브 포인트 지우기
{
	global.save_point_num--;
	global.save_point_num = fix_to_zero(global.save_point_num);
	for(var i = n_selected.m_data_arg0; i < 5; i++)
	{
		global.savepoint_position[i] = global.savepoint_position[i+1];
	}
					
	var tmp_directory = string(global.custom_map_file_dir[global.n_map_id])+"\\map_data.ini";
	ini_open(tmp_directory);
		for(var i = 0; i <= 5; i++)
		{
			ini_write_real("map_data","savepoint"+string(i),global.savepoint_position[i]);
		}
	ini_close();
}
instance_destroy(n_selected);
with(code)
{
	event_user(10);
}