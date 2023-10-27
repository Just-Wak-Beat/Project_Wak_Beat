/// @description 현재 타임라인에 존재하는 탄막 불러오기 
// You can write your code in this editor

global.tmp_str_map_data = global.c_map_param[floor(global.n_progress)];

//문자열 가장 뒤에 있는 띄어쓰기는 제거
global.tmp_str_map_data = string_delete(global.tmp_str_map_data,string_length(global.tmp_str_map_data),1);

show_debug_message("data str check : "+string(string_pos(global.tmp_str_map_data," ")))
while(string_length(global.tmp_str_map_data) >= 2)
{
	var tmp_space_pos = string_pos(global.tmp_str_map_data,",");
	var string_length_param = string_pos_ext(global.tmp_str_map_data,",",2)-tmp_space_pos;
	show_debug_message("data str : "+string(global.tmp_str_map_data)+" / pos : "+string(tmp_space_pos)+" / length : "+string(tmp_space_pos));
	
	
	var proj_type = real(string_copy(global.tmp_str_map_data,tmp_space_pos+1,string_length_param+1));
	global.tmp_str_map_data = string_delete(global.tmp_str_map_data,tmp_space_pos,string_length_param+1);
	
	var xx = real(string_copy(global.tmp_str_map_data,tmp_space_pos+1,string_length_param+1));
	global.tmp_str_map_data = string_delete(global.tmp_str_map_data,tmp_space_pos,string_length_param+1);
	
	var yy = real(string_copy(global.tmp_str_map_data,tmp_space_pos+1,string_length_param+1));
	global.tmp_str_map_data = string_delete(global.tmp_str_map_data,tmp_space_pos,string_length_param+1);
	
	var arg0 = real(string_copy(global.tmp_str_map_data,tmp_space_pos+1,string_length_param+1));
	global.tmp_str_map_data = string_delete(global.tmp_str_map_data,tmp_space_pos,string_length_param+1);
	
	var arg1 = real(string_copy(global.tmp_str_map_data,tmp_space_pos+1,string_length_param+1));
	global.tmp_str_map_data = string_delete(global.tmp_str_map_data,tmp_space_pos,string_length_param+1);
	
	var arg2 = real(string_copy(global.tmp_str_map_data,tmp_space_pos+1,string_length_param+1));
	global.tmp_str_map_data = string_delete(global.tmp_str_map_data,tmp_space_pos,string_length_param+1);
	
	var arg3 = real(string_copy(global.tmp_str_map_data,tmp_space_pos+1,string_length_param+1));
	global.tmp_str_map_data = string_delete(global.tmp_str_map_data,tmp_space_pos,string_length_param+1);
	
	var arg4 = real(string_copy(global.tmp_str_map_data,tmp_space_pos+1,string_length_param+1));
	global.tmp_str_map_data = string_delete(global.tmp_str_map_data,tmp_space_pos,string_length_param+1);
	
	var arg5 = real(string_copy(global.tmp_str_map_data,tmp_space_pos+1,string_length_param+1));
	global.tmp_str_map_data = string_delete(global.tmp_str_map_data,tmp_space_pos,string_length_param+1);
	
	var arg6 = real(string_copy(global.tmp_str_map_data,tmp_space_pos+1,string_length_param+1));
	global.tmp_str_map_data = string_delete(global.tmp_str_map_data,tmp_space_pos,string_length_param+1);
	
	
	//탄막 타입 기준으로 탄막 생성
	editor_mode_create_projectile(proj_type,xx,yy,arg0,arg1,arg2,arg3,arg4,arg5,arg6);
	
	show_debug_message("data str : "+string(global.tmp_str_map_data));
}