/// @description 커스텀 맵 파일 히트박스 이미지 중심점 조정
// You can write your code in this editor

var tmp_i = (global.c_spr_center_origin_num > global.c_spr_top_origin_num) ? global.c_spr_center_origin_num : global.c_spr_top_origin_num;
for(var i = 0; i <= tmp_i; i++)
{
	var tmp_spr = global.custom_proj_center_spr[i];
	if (sprite_exists(tmp_spr))
	{
		sprite_set_offset(tmp_spr,floor(sprite_get_width(tmp_spr)/2),floor(sprite_get_height(tmp_spr)/2));
		show_debug_message("tmp_spr"+string(i)+" : "+string(sprite_get_width(tmp_spr))+" / "+string(sprite_get_xoffset(tmp_spr)))
	}

	
	var tmp_spr = global.custom_proj_top_spr[i];
	if (sprite_exists(tmp_spr))
	{
		sprite_set_offset(tmp_spr,floor(sprite_get_width(tmp_spr)/2),0);
	}
}