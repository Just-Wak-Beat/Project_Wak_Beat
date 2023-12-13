// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function get_custom_map_num()
{
	///directory_list(directory)
	var _directory = string(global.custom_map_directory)+"user_custom_map\\";
	var _finished = false
	var tmp_ind = 0;

	
	var _firstFile = file_find_first(string(_directory)+"*", fa_directory);

	show_debug_message("커스텀 맵 폴더 :"+string(_directory)+string(_firstFile))
	if (string_length(_firstFile) == 0)
	{
		return 0;
	}
	else
	{
		global.custom_map_file_dir[tmp_ind] = string(_directory)+string(_firstFile);
	    tmp_ind++;
	}

	while(true)
	{
	    var _file = file_find_next();
	    if (string_length(_file) == 0)
		{
	        break;
	    }
		else
		{
	        var _fullPath = string(_directory)+string(_file);
	        if directory_exists(_fullPath)
			{
	            global.custom_map_file_dir[tmp_ind] = string(_fullPath);
				tmp_ind++;
	        }
	    }
	}

	file_find_close();
	show_debug_message("커스텀 맵 파일 "+string(tmp_ind)+"개를 불러왔습니다.");
	show_message_log("커스텀 맵 파일 "+string(tmp_ind)+"개를 불러왔습니다.");
	
	return tmp_ind;
}