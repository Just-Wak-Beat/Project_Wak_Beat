// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function directory_list()
{
	///directory_list(directory)
	var _directory = global.custom_map_directory;
	var _finished = false
	var tmp_ind = 0;

	
	var _firstFile = file_find_first(string(_directory)+"*", fa_directory);

	if (string_length(_firstFile) == 0)
	{
		return 0;
	}

	if directory_exists(string(_directory)+string(_firstFile))
	{
		global.custom_map_file_dir[tmp_ind] = string(_directory)+string(_firstFile);
	    tmp_ind++;
	}

	while(!_finished)
	{
	    var _file = file_find_next();
	    if (string_length(_file) == 0)
		{
	        _finished = true;
	        break;
	    }
		else
		{
	        var _fullPath = string(_directory)+string(_file);
	        if directory_exists(_fullPath)
			{
	            global.custom_map_file_dir[tmp_ind] = string(_directory)+string(_firstFile);
				tmp_ind++;
	        }
	    }
	}

	file_find_close();
	return tmp_ind;
}