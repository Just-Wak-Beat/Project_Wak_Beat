/// @description 커스텀 맵 파일 히트박스 이미지
// You can write your code in this editor
for(var i = 0; i < 100; i++)
{
	global.custom_proj_center_spr[i] = -4;
	global.custom_proj_top_spr[i] = -4;
}
global.custom_proj_center_spr[0] = spr_tmp;
global.custom_proj_center_spr[1] = spr_circle;
global.custom_proj_center_spr[2] = spr_circle_half;
global.custom_proj_center_spr[3] = spr_circle_outline;
global.custom_proj_center_spr[4] = spr_circle_spike;
global.custom_proj_center_spr[5] = spr_circle_spike2;
global.custom_proj_center_spr[6] = spr_triangle;
global.custom_proj_center_spr[7] = spr_triangle_empty_bold;
global.custom_proj_center_spr[8] = spr_star;
global.custom_proj_center_spr[9] = spr_snow;
global.custom_proj_center_spr[10] = spr_heart;
global.custom_proj_center_spr[11] = spr_gear;
global.custom_proj_center_spr[12] = spr_arrow;
global.custom_proj_center_spr[13] = spr_cross;



global.custom_proj_top_spr[0] = spr_circle_cylinder;
global.custom_proj_top_spr[1] = spr_spike_cylinder;
global.custom_proj_top_spr[2] = spr_square_cylinder;


show_message_log("커스텀 맵 이미지 리소스 불러오는 중...");
var _directory = string(global.custom_map_file_dir[global.n_map_id])+"\\custom_hitbox_image\\";

///////////////////////////////////////////////////////////////////////////////////////////////////////


var tmp_ind1 = 99;
var _firstFile = file_find_first(string(_directory)+"center_origin\\*.png", fa_none);
if (string_length(_firstFile) != 0)
{
	global.custom_proj_center_spr[tmp_ind1] = sprite_add_ext(string(_directory)+"center_origin\\"+string(_firstFile),0,0,0,true);
	show_message_log(string(_firstFile));
	
	tmp_ind1--;
	
	while(true)
	{
		var _file = file_find_next();
		if (string_length(_file) == 0)
		{
		    break;
		}
		else
		{
			show_message_log(string(_file));
		    global.custom_proj_center_spr[tmp_ind1] = sprite_add_ext(string(_directory)+"center_origin\\"+string(_file),0,0,0,true);
			sprite_set_offset(global.custom_proj_center_spr[tmp_ind1],floor(sprite_get_width(global.custom_proj_center_spr[tmp_ind1])/2),floor(sprite_get_height(global.custom_proj_center_spr[tmp_ind1])/2));
			tmp_ind1--;
		}
	}
}

file_find_close();

///////////////////////////////////////////////////////////////////////////////////////////////////////

var tmp_ind2 = 99;
var _firstFile = file_find_first(string(_directory)+"top_origin\\*.png", fa_none);
if (string_length(_firstFile) != 0)
{
	show_message_log(string(_firstFile));
	global.custom_proj_top_spr[tmp_ind2] = sprite_add_ext(string(_directory)+"top_origin\\"+string(_firstFile),0,0,0,true);
	sprite_set_offset(global.custom_proj_top_spr[tmp_ind2],floor(sprite_get_width(global.custom_proj_top_spr[tmp_ind2])/2),floor(sprite_get_height(global.custom_proj_top_spr[tmp_ind2])/2));
	tmp_ind2--;
	
	while(true)
	{
		var _file = file_find_next();
		if (string_length(_file) == 0)
		{
		    break;
		}
		else
		{
			show_message_log(string(_file));
		    global.custom_proj_top_spr[tmp_ind2] = sprite_add_ext(string(_directory)+"top_origin\\"+string(_file),0,0,0,true);
			sprite_set_offset(global.custom_proj_top_spr[tmp_ind2],floor(sprite_get_width(global.custom_proj_top_spr[tmp_ind2])/2),floor(sprite_get_height(global.custom_proj_top_spr[tmp_ind2])/2));
			tmp_ind2--;
		}
	}
}

file_find_close();


show_message_log("[Enter키 혹은 W키를 눌러 일시정지]");