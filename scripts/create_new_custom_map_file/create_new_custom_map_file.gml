// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function create_new_custom_map_file()
{
	var date_time = date_current_datetime();
	var str_current_date = string(date_get_year(date_time))+"_"+string(date_get_month(date_time))+"_"+string(date_get_day(date_time))+"_"+string(date_get_hour(date_time))+"_"+string(date_get_minute(date_time))+"_"+string(date_get_second(date_time));
	var map_dir = string(global.custom_map_directory)+"user_custom_map\\custom_map_file "+string(str_current_date);
	
	ini_open(string(global.custom_map_directory)+"user_custom_map\\system.ini")
		ini_write_real("dummy_data","dummy_data",0);
	ini_close();
	
	ini_open(string(map_dir)+"\\custom_hitbox_image\\center_origin\\[커스텀 탄막 이미지는 png파일만 가능합니다].txt");
		ini_write_real("dummy_data","dummy_data",0);
	ini_close();
	
	ini_open(string(map_dir)+"\\custom_hitbox_image\\top_origin\\[커스텀 탄막 이미지는 png파일만 가능합니다].ini");
		ini_write_real("dummy_data","dummy_data",0);
	ini_close();
	
	
	//커스텀 맵 파일 생성
	var file_tmp = string(map_dir)+"\\map_info.ini";
	var tmp_file_real = file_text_open_append(file_tmp);
	file_text_write_string(tmp_file_real,"# 잘 모르는 부분은 아래 링크를 참고해주세요!\n#      https://github.com/Just-Wak-Beat/Project_Wak_Beat/blob/main/Guideline%20for%20Custom%20User%20Stage.md    \n\n# 해당 부분은 노래의 'BPM'값을 입력해주세요!\n[custom_stage_bpm]\nvalue=\"0.000000\"\n\n# 해당 부분은 '해금 레벨 조건'값을 입력해주세요! (0~999 레벨 사이)\n[custom_requirement_level]\nvalue=\"0.000000\"\n\n# 해당 부분은 '맵 제작자'를 입력해주세요!\n[custom_stage_map_map_by] \nvalue=\"Unknown\"\n\n# 해당 부분은 '곡 이름'를 입력해주세요!\n[custom_stage_map_name] \nvalue=\"Untitled\"\n\n# 해당 부분은 '작곡가'를 입력해주세요!\n[custom_stage_map_artist]\nvalue=\"Undefined Artist\"\n\n# 해당 부분은 '난이도'를 입력해주세요! (ex. Easy, Hard, Expert...)\n[custom_stage_map_difficulty]\nvalue=\"Undefined Difficulty\"\n\n# 해당 부분은 맵의 '컬러'를 입력해주세요! (hex컬러)\n[custom_stage_map_color]\nvalue=\"#000000\"\n\n# 해당 부분은 '곡의 하이라이트 파트'를 입력해주세요 (해당 곡은 8.2초 부터 하이라이트 부분입니다!)\n[custom_stage_map_highlight_part]\nvalue=\"0.000000\"\n\n# 해당 부분은 난이도 정도를 숫자로 표현해 적어주세요! (0~9까지 0.5 단위로 입력가능)\n[custom_detailed_difficulty]\nvalue=\"0.000000\"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n[custom_n_artifact]\nvalue=\"X\"\n[n_score_hardcore]\nvalue=\"--\"\n[custom_n_score]\nvalue=\"--\"");
	file_text_close(tmp_file_real);

	
	
	show_message_log("새로운 커스텀 스테이지 생성 완료!")
	load_custom_map_files();
	load_musicList(global.n_map_list);
	//var tmp_file = get_open_filename("text file|*.txt", "");
}