// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function directory_list()
{
	///directory_list(directory)
	var _directory = global.custom_map_directory;
	var _list = ds_list_create();
	var _finished = false

	
	var _firstFile = file_find_first(string(_directory)+"*", fa_directory);

	if (string_length(_firstFile) == 0)
	{
		return _list;
	}

	if directory_exists(string(_directory)+string(_firstFile))
	{
	    ds_list_add(_list,string(_directory)+string(_firstFile));
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
	            ds_list_add(_list,_fullPath);
	        }
	    }
	}

	file_find_close()
	return _list;
}