/// @description 커스텀 맵 파일 히트박스 이미지
// You can write your code in this editor


var tmp_file_directory = string(global.custom_map_directory)+"datafile_hitbox_img\\";

var tmp_directory1 = string(tmp_file_directory)+"center_origin\\";
ini_open(string(tmp_directory1)+"data.ini")
ini_write_string("dummy_data","value","undefined");
ini_close()

sprite_save(spr_album,1,string(tmp_directory1)+"hitbox1.png")
sprite_save(spr_triangle,0,string(tmp_directory1)+"hitbox2.png")
sprite_save(spr_triangle_empty_bold,0,string(tmp_directory1)+"hitbox3.png")
sprite_save(spr_circle_spike2,0,string(tmp_directory1)+"hitbox4.png")
sprite_save(spr_circle_outline,0,string(tmp_directory1)+"hitbox5.png")
sprite_save(spr_gear,0,string(tmp_directory1)+"hitbox6.png")
sprite_save(spr_heart,0,string(tmp_directory1)+"hitbox7.png")
sprite_save(spr_circle_half,0,string(tmp_directory1)+"hitbox8.png")
sprite_save(spr_square_half,0,string(tmp_directory1)+"hitbox9.png")
sprite_save(spr_snow,0,string(tmp_directory1)+"hitbox10.png")
sprite_save(spr_star,0,string(tmp_directory1)+"hitbox11.png")

/////////////////////////////////////////////////////////////////////////
	
var tmp_directory2 = string(tmp_file_directory)+"top_origin\\"
ini_open(string(tmp_directory2)+"data.ini")
ini_write_string("dummy_data","value","undefined");
ini_close()


sprite_save(spr_square_cylinder,0,string(tmp_directory1)+"hitbox1.png")
sprite_save(spr_spike_cylinder,0,string(tmp_directory1)+"hitbox2.png")










show_message_log("커스텀 맵 이미지 리소스 불러오는 중...");