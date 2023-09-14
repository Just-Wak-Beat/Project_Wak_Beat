// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function create_userdata_code()
{
	var tmp_converted_dataset = 0;
	for(var i = 0; i <= 10; i++)
	{
		tmp_converted_dataset[i] = 0;
	}
	tmp_converted_dataset[0] = global.nickname;
	tmp_converted_dataset[1] = global.level;
	for(var i = 2; i <= 10; i++)
	{
		tmp_converted_dataset[i] = global.artifact_owned[i-2];
	}

	//converting
	for(var i = 1; i < 2; i++)
	{
		tmp_converted_dataset[i] = string_replace_all(string(tmp_converted_dataset[i]),0,"A");
		tmp_converted_dataset[i] = string_replace_all(string(tmp_converted_dataset[i]),1,"B");
		tmp_converted_dataset[i] = string_replace_all(string(tmp_converted_dataset[i]),2,"C");
		tmp_converted_dataset[i] = string_replace_all(string(tmp_converted_dataset[i]),3,"D");
		tmp_converted_dataset[i] = string_replace_all(string(tmp_converted_dataset[i]),4,"E");
		tmp_converted_dataset[i] = string_replace_all(string(tmp_converted_dataset[i]),5,"F");
		tmp_converted_dataset[i] = string_replace_all(string(tmp_converted_dataset[i]),6,"G");
		tmp_converted_dataset[i] = string_replace_all(string(tmp_converted_dataset[i]),7,"H");
		tmp_converted_dataset[i] = string_replace_all(string(tmp_converted_dataset[i]),8,"I");
		tmp_converted_dataset[i] = string_replace_all(string(tmp_converted_dataset[i]),9,"J");
	}

	//converting
	for(var i = 2; i <= 10; i++)
	{
		tmp_converted_dataset[i] = string_replace_all(string(tmp_converted_dataset[i]),0,"K");
		tmp_converted_dataset[i] = string_replace_all(string(tmp_converted_dataset[i]),1,"L");
		tmp_converted_dataset[i] = string_replace_all(string(tmp_converted_dataset[i]),2,"M");
		tmp_converted_dataset[i] = string_replace_all(string(tmp_converted_dataset[i]),3,"N");
		tmp_converted_dataset[i] = string_replace_all(string(tmp_converted_dataset[i]),4,"O");
		tmp_converted_dataset[i] = string_replace_all(string(tmp_converted_dataset[i]),5,"P");
		tmp_converted_dataset[i] = string_replace_all(string(tmp_converted_dataset[i]),6,"Q");
		tmp_converted_dataset[i] = string_replace_all(string(tmp_converted_dataset[i]),7,"R");
		tmp_converted_dataset[i] = string_replace_all(string(tmp_converted_dataset[i]),8,"S");
		tmp_converted_dataset[i] = string_replace_all(string(tmp_converted_dataset[i]),9,"T");
	}
	
	
	//converted
	var tmp_code = tmp_converted_dataset[0]+"-";
	for(var i = 1; i <= 10; i++)
	{
		tmp_code = tmp_code+tmp_converted_dataset[i]+chr(irandom_range(97,122));
	}
	
	show_debug_message("user id - "+string(tmp_code))
	return tmp_code;
}