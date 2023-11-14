// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function get_custom_map_num()
{
	var total_num = 0;
	var file_dir = file_find_first(string(global.custom_map_directory)+"*", fa_directory);
	while(true)
	{
		if file_dir != "" && file_exists(file_dir) //파일 이름은 1번부터 시작
		{
			total_num ++
			file_dir = file_find_next();
		}
		else
		{
			file_find_close();
			break;
		}
	}
	

	show_debug_log("커스텀 맵 파일 "+string(total_num)+"개를 불러왔습니다.");
	return total_num;
}