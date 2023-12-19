// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

///@param dir
///@param ext1
///@param ext2
///@param ext3
///@param ext4
function find_file(argument0,argument1,argument2,argument3,argument4)
{
	var _firstFile = file_find_first(string(argument0)+"\\*."+string(argument1), fa_none);
		if (_firstFile != "")
		{
			return (string(argument0)+"\\"+string(_firstFile)+"."+string(argument1));
		}
	file_find_close();
	
	if (argument2 != -4)
	{
		var _firstFile = file_find_first(string(argument0)+"\\*."+string(argument2), fa_none);
			if (_firstFile != "")
			{
				return (string(argument0)+"\\"+string(_firstFile)+"."+string(argument1));
			}
		file_find_close();
	}
	
	if (argument3 != -4)
	{
		var _firstFile = file_find_first(string(argument0)+"\\*."+string(argument3), fa_none);
			if (_firstFile != "")
			{
				return (string(argument0)+"\\"+string(_firstFile)+"."+string(argument1));
			}
		file_find_close();
	}
	
	if (argument4 != -4)
	{
		var _firstFile = file_find_first(string(argument0)+"\\*."+string(argument4), fa_none);
			if (_firstFile != "")
			{
				return (string(argument0)+"\\"+string(_firstFile)+"."+string(argument1));
			}
		file_find_close();
	}
	
	return "";
}