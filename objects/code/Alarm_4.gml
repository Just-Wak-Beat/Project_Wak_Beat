/// @description 커스텀 맵 파일 히트박스 이미지
// You can write your code in this editor
show_message_log("커스텀 맵 이미지 리소스 불러오는 중...");

var _directory = string(global.custom_map_file_dir[global.n_map_id])+"\\custom_hitbox_image\\";


var tmp_ind1 = 0;
while(global.custom_proj_center_spr[tmp_ind1] == -4)
{
	tmp_ind1++;
}
var _firstFile = file_find_first(string(_directory)+"center_origin\\*.png", fa_none);



var tmp_ind2 = 0;
while(global.custom_proj_top_spr[tmp_ind2] == -4)
{
	tmp_ind2++;
}
