/// @description 커스텀 맵 파일 히트박스 이미지 로드
// You can write your code in this editor
if (global.map_editor == 1)
{
	show_message_log("커스텀 맵 이미지 리소스 적용 중...");
}



var tmp_ind1 = 13;
var tmp_ind2 = 2;

for(var i = 0; i < 100; i++)
{
	if (i > tmp_ind1)
	{
		global.custom_proj_center_spr[i] = -4;
	}
	
	if (i > tmp_ind2)
	{
		global.custom_proj_top_spr[i] = -4;
	}
}





var _directory = string(global.custom_map_file_dir[global.n_map_id])+"\\custom_hitbox_image\\";

///////////////////////////////////////////////////////////////////////////////////////////////////////




var _firstFile = file_find_first(string(_directory)+"center_origin\\*.png", fa_none);
if (string_length(_firstFile) != 0)
{
	tmp_ind1++;
	
	
	var tmp_img_dir = string(_directory)+"center_origin\\"+string(_firstFile);
	global.custom_proj_center_spr[tmp_ind1] = sprite_add_ext(tmp_img_dir,0,0,0,true);
	
	
	
	if (global.map_editor == 1)
	{
		show_message_log("ㄴ"+string(_firstFile));
	}
	
	while(true)
	{
		var _file = file_find_next();
		if (string_length(_file) == 0 || tmp_ind2 >= 99)
		{
			if (tmp_ind2 >= 99)
			{
				show_message_log("최대로 불러올 수 있는 이미지파일 갯수를 초과하였습니다!");
			}
			
		    break;
		}
		else
		{
			tmp_ind1++;
			if (global.map_editor == 1)
			{
				show_message_log("ㄴ"+string(_file));
			}
			
			
			var tmp_img_dir = string(_directory)+"center_origin\\"+string(_file);
			global.custom_proj_center_spr[tmp_ind1] = sprite_add_ext(tmp_img_dir,0,0,0,true);
		}
	}
}

global.c_spr_center_origin_num = tmp_ind1;


file_find_close();

///////////////////////////////////////////////////////////////////////////////////////////////////////


var _firstFile = file_find_first(string(_directory)+"top_origin\\*.png", fa_none);
if (string_length(_firstFile) != 0)
{
	tmp_ind2++;
	if (global.map_editor == 1)
	{
		show_message_log("ㄴ"+string(_firstFile));
	}
	
	var tmp_img_dir = string(_directory)+"top_origin\\"+string(_firstFile);
	global.custom_proj_top_spr[tmp_ind2] = sprite_add_ext(tmp_img_dir,0,0,0,true);

	
	while(true)
	{
		var _file = file_find_next();
		if (string_length(_file) == 0 || tmp_ind2 >= 99)
		{
			if (tmp_ind2 >= 99)
			{
				show_message_log("최대로 불러올 수 있는 이미지파일 갯수를 초과하였습니다!");
			}
		    break;
		}
		else
		{
			tmp_ind2++;
			if (global.map_editor == 1)
			{
				show_message_log("ㄴ"+string(_file));
			}
			
			var tmp_img_dir = string(_directory)+"top_origin\\"+string(_file);
			global.custom_proj_top_spr[tmp_ind2] = sprite_add_ext(tmp_img_dir,0,0,0,true);
		}
	}
}

global.c_spr_top_origin_num = tmp_ind2;

file_find_close();




if (global.map_editor == 1)
{
	clean_message_log();
	show_message_log("[Enter키 혹은 W키를 눌러 타임라인 에디터 창 열기]");
}