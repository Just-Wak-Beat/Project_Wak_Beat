/// @description 현재 타임라인에 존재하는 탄막 불러오기 
// You can write your code in this editor

global.tmp_str_map_data = global.c_map_param[floor(global.n_progress)];
while(string_length(global.tmp_str_map_data) >= 2)
{
	var tmp_space_pos = string_pos(string(global.tmp_str_map_data),",");
	show_debug_message("data str : "+string(global.tmp_str_map_data)+" / pos : "+string(tmp_space_pos)+" / length : "+string(tmp_space_pos));
	
	
	var proj_type = real(string_copy(global.tmp_str_map_data,1,tmp_space_pos-1));
	global.tmp_str_map_data = string_delete(global.tmp_str_map_data,1,tmp_space_pos);
	
	var xx = real(string_copy(global.tmp_str_map_data,1,tmp_space_pos-1));
	global.tmp_str_map_data = string_delete(global.tmp_str_map_data,1,tmp_space_pos);
	
	var yy = real(string_copy(global.tmp_str_map_data,1,tmp_space_pos-1));
	global.tmp_str_map_data = string_delete(global.tmp_str_map_data,1,tmp_space_pos);
	
	var arg0 = real(string_copy(global.tmp_str_map_data,1,tmp_space_pos-1));
	global.tmp_str_map_data = string_delete(global.tmp_str_map_data,1,tmp_space_pos);
	
	var arg1 = real(string_copy(global.tmp_str_map_data,1,tmp_space_pos-1));
	global.tmp_str_map_data = string_delete(global.tmp_str_map_data,1,tmp_space_pos);
	
	var arg2 = real(string_copy(global.tmp_str_map_data,1,tmp_space_pos-1));
	global.tmp_str_map_data = string_delete(global.tmp_str_map_data,1,tmp_space_pos);
	
	var arg3 = real(string_copy(global.tmp_str_map_data,1,tmp_space_pos-1));
	global.tmp_str_map_data = string_delete(global.tmp_str_map_data,1,tmp_space_pos);
	
	var arg4 = real(string_copy(global.tmp_str_map_data,1,tmp_space_pos-1));
	global.tmp_str_map_data = string_delete(global.tmp_str_map_data,1,tmp_space_pos);
	
	var arg5 = real(string_copy(global.tmp_str_map_data,1,tmp_space_pos-1));
	global.tmp_str_map_data = string_delete(global.tmp_str_map_data,1,tmp_space_pos);
	
	var arg6 = real(string_copy(global.tmp_str_map_data,1,tmp_space_pos-1));
	global.tmp_str_map_data = string_delete(global.tmp_str_map_data,1,tmp_space_pos);
	
	
	//탄막 타입 기준으로 탄막 생성
	editor_mode_create_projectile(proj_type,xx,yy,arg0,arg1,arg2,arg3,arg4,arg5,arg6);
	
	show_debug_message("data str : "+string(global.tmp_str_map_data));
}