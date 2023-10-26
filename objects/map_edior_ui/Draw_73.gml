/// @description Insert description here
// You can write your code in this editor
var xx = camera_get_view_x(view_camera[0]);
var yy = camera_get_view_y(view_camera[0]);
var xx_w = camera_get_view_width(view_camera[0]);
var yy_h = camera_get_view_height(view_camera[0]);

draw_self();

draw_sprite_ext(spr_square,0,xx+xx_w*0.5,yy+8*global.converted_view_ratio+scroll_y*global.converted_view_ratio,99,8,0,c_white,1)
draw_sprite_ext(spr_square,0,xx+xx_w*0.5,yy+scroll_y*global.converted_view_ratio,99,8,0,c_black,1)


var fontsize2 = (0.45*(1+global.mobile_mode*0.3))*global.converted_view_ratio
draw_text_k_scale(xx+xx_w*0.05,yy+yy_h*(0.96-global.mobile_mode*0.03),"에디터 창 (Enter)",64,-1,1,c_white,0,-1,normal_font,fontsize2*global.font_ratio_resolution_xx,fontsize2,0)


draw_text_k_scale(xx+xx_w*0.2,yy+yy_h*(0.9-global.mobile_mode*0.03)-map_edior_ui.scroll_y,"타임라인 이동 [ "+string(global.n_progress)+" / "+string(global.music_duration)+" ]",64,-1,1,c_white,0,-1,normal_font,fontsize2*global.font_ratio_resolution_xx,fontsize2,0)


var tmp_name = [ "이동 탄막", "스파이크 폭발 탄막", "레이저 탄막", "눈꽃 탄막", "지렁이 탄막", "화살표 레이저 탄막", "원형 폭발 탄막", "맵 밖에서 튀어나오는 탄막", "탄막색 변경" , "배경색 변경" , "비 이펙트" , "세이브 포인트 지정", "카메라 - 화면 크기 설정", "카메라 - 천천히 줌 인", "카메라 - 천천히 줌 아웃", "카메라 - 화면 흔들림", "회전하는 탄막 자동 생성기", "Unknown", "Unknown", "Unknown", "Unknown", "타임라인 플레이/일시정지" ];
draw_text_k_scale(xx+64,yy+32+scroll_y,string(tmp_name[global.editor_selected_type]),64,-1,1,c_white,0,-1,normal_font,fontsize2*global.font_ratio_resolution_xx,fontsize2,0)
for(var i = 0; i < 23; i++)
{
	var tmp_xx = xx+(128+i*160)*global.converted_view_ratio;
	var tmp_yy = yy+(160+scroll_y)*global.converted_view_ratio;
	if (mouse_check_button_released(mb_left) && point_distance(mouse_x,mouse_y,tmp_xx,tmp_yy) <= 64*global.converted_view_ratio)
	{
		audio_play_sound(common_sfx1,0,false,0.2*global.master_volume*global.sfx_volume);
		global.ed_arg_name[0] = "";
		global.ed_arg_name[1] = "";
		global.ed_arg_name[2] = "";
		global.ed_arg_name[3] = "";
		global.ed_arg_name[4] = "";
		global.ed_arg_name[5] = "";
		global.ed_arg_name[6] = "";
		sprite_index = spr_player
		image_blend = global.map_color;
		image_angle = 0;
		image_index = 41;
		image_xscale = 1;
		image_yscale = 1;
		image_alpha = 1;
		
		with(obj_button)
		{
			if (button_id >= 100)
			{
				instance_destroy();
			}
		}
		
		if (i == 21)
		{
			global.timeline_stop *= -1;
			if (global.timeline_stop == 1)
			{
				audio_stop_sound(global.n_music_id);
				instance_destroy(hitbox_parents);
			}
			else
			{
				activated = -1;
				var _audio_asset = (global.n_map_list != 2) ? asset_get_index(global.n_music_name) : global.custom_audio_asset[code.n_stage];
				global.n_music_id = _audio_asset;
				global.n_music_instance = audio_play_sound(global.n_music_id,0,false,global.custom_map_volume_control*0.5*global.master_volume*global.bgm_volume*(global.mobile_mode*0.5+1))
				timeline_running = true;
				audio_sound_set_track_position(global.n_music_instance,global.n_progress/60);
			}
		}
		else
		{
			global.editor_selected_type = i;
		}
	}
	
	draw_sprite_ext(spr_editor_button,(i != 21) ? i+1 : ((global.timeline_stop == 1) ? 22 : 23),tmp_xx,tmp_yy,global.converted_view_ratio,global.converted_view_ratio,0,c_white,1)
	if (global.editor_selected_type == i)
	{
		draw_sprite_ext(spr_editor_button,0,tmp_xx,tmp_yy,global.converted_view_ratio,global.converted_view_ratio,0,c_white,1)
	}
}

if (global.editor_selected_type == 0)
{
	draw_set_alpha(0.5)
	draw_set_color(global.map_color)
	draw_line_width(mouse_x+lengthdir_x(320,image_angle),mouse_y+lengthdir_y(320,image_angle),mouse_x,mouse_y,3);
}
else if (global.editor_selected_type == 1)
{
	draw_set_alpha(0.5)
	draw_set_color(global.map_color)
	draw_line_width(mouse_x+(global.ed_arg[1]-180)*50,mouse_y+(global.ed_arg[2]-128)*50,mouse_x,mouse_y,3);
}
else if (global.editor_selected_type == 4)
{
	draw_set_alpha(0.5)
	draw_set_color(global.map_color)
	draw_line_width(mouse_x+lengthdir_x(320,image_angle-270),mouse_y+lengthdir_y(320,image_angle-270),mouse_x,mouse_y,3);
}




for(var i = 0; i < 7; i++)
{
	var tmp_string = (global.ed_arg_name[i] != "") ? " ["+string(global.ed_arg[i])+"]" : "";
	
	draw_text_k_scale(xx+64+i*420,yy+320+scroll_y,string(global.ed_arg_name[i])+string(tmp_string),64,-1,1,c_white,0,-1,normal_font,fontsize2*global.font_ratio_resolution_xx,fontsize2,0)
}