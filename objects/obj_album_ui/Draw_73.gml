/// @description Insert description here
// You can write your code in this editor
var ui_alpha__cal = global.ui_alpha
if ui_alpha__cal > 1
{
ui_alpha__cal = 1
}
///////////////////////////////////////////////////////////////////////////////////
if sprite_exists(sprite_index)
{
	var __brighting_col = global.map_color
	draw_sprite_ext(spr_album,1,x-32,y+32,image_xscale*global.font_ratio_resolution_xx*1.05,image_yscale*1.05,image_angle,merge_color(__brighting_col,c_black,0.7),0.5*image_alpha)
	draw_sprite_ext(sprite_index,image_index,x,y,image_xscale*global.font_ratio_resolution_xx,image_yscale,image_angle,image_blend,image_alpha)

	if instance_exists(code) && global.artifact_owned[global.requirement_type[code.n_stage]] < global.requirement_number[code.n_stage]
	{
	__brighting_col = #68646f
	draw_sprite_ext(spr_album,1,x,y,image_xscale*global.font_ratio_resolution_xx,image_yscale,image_angle,__brighting_col,0.5*image_alpha)
	draw_sprite_ext(spr_lock,0,x,y,image_xscale*0.7*global.font_ratio_resolution_xx,image_yscale*0.7,image_angle,c_white,image_alpha)
	}


	for(var i = 1; i <= 1.03; i += 0.001)
	{
	draw_sprite_ext(spr_album,0,x,y+i,image_xscale*global.font_ratio_resolution_xx*i,image_yscale*i,image_angle,merge_color(__brighting_col,c_white,w_alpha),ui_alpha__cal*0.01+w_alpha*0.3)
	}
}



//스탯창 그림자
var ______yy = global.c_y-(1 - ui_alpha__cal)*1880-abs(global.map_scroll_ui_position)*256
for(var i = 0; i <= 16; i += 0.5)
{
draw_sprite_ext(spr_status,0,global.c_x-(1 - ui_alpha__cal)*1880,global.c_y+i,global.font_ratio_resolution_xx,1.15,0,#d9d1dc,0.02*ui_alpha__cal)
draw_sprite_ext(spr_square,0,global.c_x+1480-(1 - ui_alpha__cal)*1880,global.c_y+80+i,0.5*global.font_ratio_resolution_xx,0.5,45,#d9d1dc,0.02*ui_alpha__cal)
draw_sprite_ext(spr_list_name,0,global.c_w-640*1.4,______yy,global.font_ratio_resolution_xx,1,0,#d9d1dc,0.02*ui_alpha__cal)
}

//스텟 창
draw_sprite_ext(spr_status,0,global.c_x-(1 - ui_alpha__cal)*1880,global.c_y,global.font_ratio_resolution_xx,1.15,0,c_white,ui_alpha__cal)
draw_sprite_ext(spr_square,0,global.c_x+1480-(1 - ui_alpha__cal)*1880,global.c_y+80,0.5*global.font_ratio_resolution_xx,0.5,45,c_white,ui_alpha__cal)

//환경설정 버튼
draw_text_k_scale(global.c_x+104,global.c_y+350,"Setting",64,-1,ui_alpha__cal,c_white,0,0,normal_font,0.5*global.font_ratio_resolution_xx,0.5,0)
draw_sprite_ext(spr_gear,0,global.c_x+100,global.c_y+300+16,0.17*global.font_ratio_resolution_xx,0.17,0,c_black,0.3*ui_alpha__cal)
draw_sprite_ext(spr_gear,0,global.c_x+100,global.c_y+300,0.17*global.font_ratio_resolution_xx,0.17,0,c_white,ui_alpha__cal)




//리스트 이름 표기창
var __mobile__movement = global.reload_n_map_list_value_animation
__mobile__movement = (__mobile__movement > 1) ? 1 : __mobile__movement;
__mobile__movement = (__mobile__movement < -1) ? -1 : __mobile__movement;
var __xx = global.c_w-640*1.4-__mobile__movement*128
var key_Lpressed = keyboard_check(vk_left)
var key_Rpressed = keyboard_check(vk_right)
draw_sprite_ext(spr_list_name,0,__xx,______yy,1,1,0,c_white,ui_alpha__cal)


//곡(테마) 선택 버튼 ui
var cal__xx1 = (global.map_list_ui_position < 0) ? global.map_list_ui_position*64 : 0
var cal__xx2 = (global.map_list_ui_position > 0) ? global.map_list_ui_position*64 : 0
draw_sprite_ext(spr_square_half,key_Lpressed,__xx-500+cal__xx1,______yy+80,0.2*global.font_ratio_resolution_xx,0.2,45,c_black,ui_alpha__cal*0.3)
draw_sprite_ext(spr_square_half,key_Lpressed,__xx-500+cal__xx1,______yy+64,0.2*global.font_ratio_resolution_xx,0.2,45,c_white,ui_alpha__cal)

draw_sprite_ext(spr_square_half,key_Rpressed,__xx+500+cal__xx2,______yy+80,0.2*global.font_ratio_resolution_xx,0.2,225,c_black,ui_alpha__cal*0.3)
draw_sprite_ext(spr_square_half,key_Rpressed,__xx+500+cal__xx2,______yy+64,0.2*global.font_ratio_resolution_xx,0.2,225,c_white,ui_alpha__cal)


var _____yy1 = global.c_y+global.c_h*0.5-(1 - ui_alpha__cal)*1880
var _____yy2 = global.c_y+global.c_h*0.5+(1 - ui_alpha__cal)*1880
var cal____yy1 = (global.map_scroll_ui_position < 0) ? global.map_scroll_ui_position*64 : 0
var cal____yy2 = (global.map_scroll_ui_position > 0) ? global.map_scroll_ui_position*64 : 0
draw_sprite_ext(spr_triangle,0,__xx,_____yy1+16-960+(cal____yy1),0.1*global.font_ratio_resolution_xx,0.1,0,c_black,ui_alpha__cal*0.3)
draw_sprite_ext(spr_triangle,0,__xx,_____yy1-960+(cal____yy1),0.1*global.font_ratio_resolution_xx,0.1,0,c_white,ui_alpha__cal)

draw_sprite_ext(spr_triangle,0,__xx,_____yy2+16+640+(cal____yy2),0.1*global.font_ratio_resolution_xx,-0.1,0,c_black,ui_alpha__cal*0.3)
draw_sprite_ext(spr_triangle,0,__xx,_____yy2+640+(cal____yy2),0.1*global.font_ratio_resolution_xx,-0.1,0,c_white,ui_alpha__cal)





if global.n_map_list = 0
{
draw_sprite_ext(spr_music,0,__xx-75,______yy+64,0.2,0.2,-15,#171628,ui_alpha__cal*(1-abs(__mobile__movement)))
draw_text_k_scale(__xx+25,______yy+24,"모든 곡",64,-1,ui_alpha__cal*(1-abs(__mobile__movement)),#171628,0,0,normal_font,0.65*global.font_ratio_resolution_xx,0.65,0)
}
if global.n_map_list = 1
{
draw_sprite_ext(spr_heart,0,__xx-125,______yy+72,0.1,0.1,0,#171628,ui_alpha__cal*(1-abs(__mobile__movement)))
draw_text_k_scale(__xx+25,______yy+24,"좋아요 한 곡",64,-1,ui_alpha__cal*(1-abs(__mobile__movement)),#171628,0,0,normal_font,0.65*global.font_ratio_resolution_xx,0.65,0)
}
if global.n_map_list = 2
{
draw_sprite_ext(spr_gear,0,__xx-110,______yy+72,0.12,0.12,15,#171628,ui_alpha__cal*(1-abs(__mobile__movement)))
draw_text_k_scale(__xx+25,______yy+24,"커스텀 곡",64,-1,ui_alpha__cal*(1-abs(__mobile__movement)),#171628,0,0,normal_font,0.65*global.font_ratio_resolution_xx,0.65,0)
}
if global.n_map_list = 3
{
draw_sprite_ext(spr_lock,1,__xx-125,______yy+72,0.1,0.1,0,#171628,ui_alpha__cal*(1-abs(__mobile__movement)))
draw_text_k_scale(__xx+25,______yy+24,"해금 된 곡",64,-1,ui_alpha__cal*(1-abs(__mobile__movement)),#171628,0,0,normal_font,0.65*global.font_ratio_resolution_xx,0.65,0)
}


draw_text_k_scale(global.c_x+27-(1 - ui_alpha__cal)*1880,global.c_y,"Artifacts",64,-1,ui_alpha__cal,#171628,0,-1,normal_font,0.5*global.font_ratio_resolution_xx,0.5,0)
for(var i = 0; i <= 7; i++)
{
draw_sprite_ext(spr_W,i,global.c_x+64+150*i-(1 - ui_alpha__cal)*1880,global.c_y+95,0.15*global.font_ratio_resolution_xx,0.15,20,#5a5257,ui_alpha__cal)
draw_text_k_scale(global.c_x+96+150*i-(1 - ui_alpha__cal)*1880,global.c_y+90,"x"+string(global.artifact_owned[i]),64,-1,ui_alpha__cal,#5a5257,0,-1,normal_font,0.5*global.font_ratio_resolution_xx,0.5,0)
}






var yy = camera_get_view_y(view_camera[0])
var yy_h = camera_get_view_height(view_camera[0])
var xx = camera_get_view_x(view_camera[0])
var xx_w = camera_get_view_width(view_camera[0])
var middle_xx = xx+xx_w*0.5;
var middle_yy = yy+yy_h*0.5;

var dis__ = (1 - abs(y - (middle_yy))/256)
if dis__ < 0
{
dis__ = 0
}


draw_sprite_ext(spr_square,0,x,middle_yy+512+global.mobile_mode*64,dis__*0.5,dis__*0.5,45,c_white,image_alpha)
var fontsize1 = 0.55*(1+global.mobile_mode*0.3)
var fontsize2 = 0.65*(1+global.mobile_mode*0.3)
var fontsize3 = 0.52*(1+global.mobile_mode*0.3)
  
if instance_exists(code) && code.gamestart != 1 && code.gamestart != 2 && code.gamestart != 3
{
draw_text_k_scale(x-260-global.mobile_mode*64,middle_yy+590+global.mobile_mode*96,"Normal\nRank",64,-1,dis__,c_white,0,0,light_font,fontsize1*global.font_ratio_resolution_xx,fontsize1,0)
draw_text_k_scale(x-260-global.mobile_mode*64,middle_yy+680+global.mobile_mode*96,string(global.n_rank[code.n_stage]),64,-1,dis__,c_white,0,0,normal_font,fontsize2*global.font_ratio_resolution_xx,fontsize2,0)

draw_text_k_scale(x-global.mobile_mode*64,middle_yy+590+global.mobile_mode*96,"Hardcore\nRank",64,-1,dis__,c_white,0,0,light_font,fontsize1*global.font_ratio_resolution_xx,fontsize1,0)
draw_text_k_scale(x-global.mobile_mode*64,middle_yy+680+global.mobile_mode*96,string(global.n_rank_hardcore[code.n_stage]),64,-1,dis__,c_white,0,0,normal_font,fontsize2*global.font_ratio_resolution_xx,fontsize2,0)

draw_text_k_scale(x+260+global.mobile_mode*64,middle_yy+620+global.mobile_mode*96,"아티팩트 수집",64,-1,dis__,c_white,0,0,light_font,fontsize3*global.font_ratio_resolution_xx,fontsize3,0)
draw_text_k_scale(x+260+global.mobile_mode*64,middle_yy+680+global.mobile_mode*96,string(global.n_artifact[code.n_stage]),64,-1,dis__,c_white,0,0,normal_font,fontsize2*global.font_ratio_resolution_xx,fontsize2,0)
}

if global.sync_setting_alpha >= 0.01
{
draw_set_alpha(global.sync_setting_alpha*0.93)
draw_set_color(c_black)
draw_line_width(global.c_x,global.c_y,global.c_w,global.c_h,room_width)

	for(var i = -1; i <= 1; i++)
	{
	var scale = global.sync_setting_circle_scale[i+1]*0.3
	var sprite__ = (i != 1) ? spr_circle : spr_circle_outline;
	draw_sprite_ext(sprite__,0,middle_xx+i*256,middle_yy,scale,scale,0,merge_color(c_white,global.player_color,global.setting_beat_w_alpha[i+1]),global.sync_setting_alpha)
	
	global.sync_setting_circle_scale[i+1] += (1 - global.sync_setting_circle_scale[i+1])*0.1
	global.setting_beat_w_alpha[i+1] += (0 - global.setting_beat_w_alpha[i+1])*0.1
	}

if global.mobile_mode != 1
{
draw_text_k_scale(xx+64,yy+yy_h*0.7,"화면 리로드",64,-1,global.sync_setting_alpha,c_white,0,-1,normal_font,fontsize2*global.font_ratio_resolution_xx,fontsize2,0)
draw_text_k_scale(xx+64,yy+yy_h*0.735,"(화면이 끊긴다면 사용해보세요)",64,-1,global.sync_setting_alpha,c_white,0,-1,light_font,fontsize3*global.font_ratio_resolution_xx,fontsize3,0)

var fullscreen_now = (window_get_fullscreen()) ? " (fullscreen)" : "";
draw_text_k_scale(xx+64,yy+yy_h*0.85,"해상도  ["+string(window_get_width())+"x"+string(window_get_height())+"]"+string(fullscreen_now),64,-1,global.sync_setting_alpha,c_white,0,-1,normal_font,fontsize2*global.font_ratio_resolution_xx,fontsize2,0)
draw_text_k_scale(xx+64,yy+yy_h*0.885,"(화면 리로드시에도, 화면이 끊긴다면 해상도를 낮춰보세요)",64,-1,global.sync_setting_alpha,c_white,0,-1,light_font,fontsize3*global.font_ratio_resolution_xx,fontsize3,0)
}
else
{
draw_text_k_scale(xx+64,yy+yy_h*0.7,"돌아가기",64,-1,global.sync_setting_alpha,c_white,0,-1,normal_font,fontsize2*global.font_ratio_resolution_xx,fontsize2,0)
draw_text_k_scale(xx+64,yy+yy_h*0.85,"게임 종료",64,-1,global.sync_setting_alpha,c_white,0,-1,normal_font,fontsize2*global.font_ratio_resolution_xx,fontsize2,0)
}

draw_text_k_scale(middle_xx,yy+yy_h*(0.1-global.mobile_mode*0.03),"마스터 볼륨",64,-1,global.sync_setting_alpha,c_white,0,0,normal_font,fontsize2*global.font_ratio_resolution_xx,fontsize2,0)
draw_text_k_scale(middle_xx,yy+yy_h*(0.2-global.mobile_mode*0.03),"효과음 볼륨",64,-1,global.sync_setting_alpha,c_white,0,0,normal_font,fontsize2*global.font_ratio_resolution_xx,fontsize2,0)
draw_text_k_scale(middle_xx,yy+yy_h*(0.3-global.mobile_mode*0.03),"음악 볼륨",64,-1,global.sync_setting_alpha,c_white,0,0,normal_font,fontsize2*global.font_ratio_resolution_xx,fontsize2,0)

draw_text_k_scale(xx+xx_w-64,yy+yy_h*(0.85-global.mobile_mode*0.03),"사용자 지정 오프셋",64,-1,global.sync_setting_alpha,c_white,0,1,normal_font,fontsize2*global.font_ratio_resolution_xx,fontsize2,0)
draw_text_k_scale(xx+xx_w-64,yy+yy_h*0.885,"(음악 싱크가 맞지 않는다면 사용해보세요)",64,-1,global.sync_setting_alpha,c_white,0,1,light_font,fontsize3*global.font_ratio_resolution_xx,fontsize3,0)
}






//게임 플레이 전 난이도 설정
if global.select_difficulty > 0
{
draw_set_alpha(global.select_difficulty*0.93)
draw_set_color(c_black)
draw_line_width(global.c_x,global.c_y,global.c_w,global.c_h,room_width)


var scale = 1.2//*(image_xscale - (0.3+global.mobile_mode*0.5))
var n_difficulty = global.selected_difficulty
var f_selected = (global.mobile_mode == 1) ? 1.8 : 1+abs(n_difficulty)*0.5
var s_selected = (global.mobile_mode == 1) ? 1.8 : 1+abs(1-n_difficulty)*0.5
var icon_scale = 0.2*(image_xscale - (0.3+global.mobile_mode*0.5))


var button_1_xx = xx+xx_w*0.32
var button_2_xx = xx+xx_w*0.68
	//game start
	if global.select_difficulty > 0.99
	{
		if global.mobile_mode == 0
		{
			if keyboard_check_pressed(vk_left) || keyboard_check_pressed(vk_up)
			{
			global.t_selected_difficulty--
			audio_play_sound(common_sfx1,0,false,0.2*global.master_volume*global.sfx_volume)
			}
		
			if keyboard_check_pressed(vk_right) || keyboard_check_pressed(vk_down)
			{
			global.t_selected_difficulty++
			audio_play_sound(common_sfx1,0,false,0.2*global.master_volume*global.sfx_volume)
			}
		
			if global.t_selected_difficulty > 1
			{
			global.t_selected_difficulty = 0
			}
		
			if global.t_selected_difficulty < 0
			{
			global.t_selected_difficulty = 1
			}
		}
		
		if (keyboard_check_pressed(vk_space) || keyboard_check_pressed(vk_enter))
		{
		code.gamestart = 1
		global.t_select_difficulty = 0
		audio_play_sound(ding_dong,0,false,global.master_volume*global.sfx_volume*2)
		}
		
		if mouse_check_button_pressed(mb_left)
		{
			if point_distance(mouse_x,mouse_y,button_1_xx,middle_yy) < 256*f_selected
			{
			global.t_selected_difficulty = 1
			code.gamestart = 1
			audio_play_sound(ding_dong,0,false,global.master_volume*global.sfx_volume*2)
			}
			else if point_distance(mouse_x,mouse_y,button_2_xx,middle_yy) < 256*s_selected
			{
			global.t_selected_difficulty = 0
			code.gamestart = 1
			audio_play_sound(ding_dong,0,false,global.master_volume*global.sfx_volume*2)
			}
			else
			{
			code.gamestart = 0
			audio_play_sound(cleared_sfx,0,false,global.master_volume*global.sfx_volume*4)
			}
		global.t_select_difficulty = 0
		}
	}
	


draw_sprite_ext(spr_circle,0,button_1_xx,middle_yy,scale*f_selected*global.font_ratio_resolution_xx,scale*f_selected,0,merge_color(c_white,c_black,abs(n_difficulty)),global.select_difficulty)
draw_sprite_ext(spr_music,0,button_1_xx,middle_yy-f_selected*130,icon_scale*f_selected*global.font_ratio_resolution_xx,icon_scale*f_selected,image_angle,merge_color(c_black,c_white,abs(n_difficulty)),global.select_difficulty)
draw_text_k_scale(button_1_xx,middle_yy-f_selected*64,"Normal",64,-1,global.select_difficulty,merge_color(c_black,c_white,abs(n_difficulty)),0,0,normal_font,0.65*f_selected*global.font_ratio_resolution_xx,0.65*f_selected,0)
draw_text_k_scale(button_1_xx,middle_yy,"특정 하이라이트 부분에서\n세이브 포인트를 제공합니다",scale*48*f_selected,-1,global.select_difficulty,merge_color(c_black,c_white,abs(n_difficulty)),0,0,normal_font,0.35*f_selected*global.font_ratio_resolution_xx,0.35*f_selected,0)


draw_sprite_ext(spr_circle,0,button_2_xx,middle_yy,scale*s_selected*global.font_ratio_resolution_xx,scale*s_selected,0,merge_color(c_white,c_black,abs(1-n_difficulty)),global.select_difficulty)
draw_sprite_ext(spr_heart,0,button_2_xx,middle_yy-s_selected*130,icon_scale*s_selected*global.font_ratio_resolution_xx,icon_scale*s_selected,image_angle,merge_color(c_black,c_white,abs(1-n_difficulty)),global.select_difficulty)
draw_text_k_scale(button_2_xx,middle_yy-s_selected*64,"Hardcore",64,-1,global.select_difficulty,merge_color(c_black,c_white,abs(1-n_difficulty)),0,0,normal_font,0.65*s_selected*global.font_ratio_resolution_xx,0.65*s_selected,0)
draw_text_k_scale(button_2_xx,middle_yy,"세이브 포인트를 제공하지 않고, 무적 쿨타임이 짧은 대신,\n클리어 시,\n아티팩트를 중복하여 획득할 수 있습니다",scale*48*s_selected,-1,global.select_difficulty,merge_color(c_black,c_white,abs(1-n_difficulty)),0,0,normal_font,0.35*s_selected*global.font_ratio_resolution_xx,0.35*s_selected,0)


//outline
draw_sprite_ext(spr_circle_outline_light,0,xx+xx_w*0.32,middle_yy,scale*f_selected*global.font_ratio_resolution_xx,scale*f_selected,0,merge_color(c_black,c_white,abs(n_difficulty)),global.select_difficulty)
draw_sprite_ext(spr_circle_outline_light,0,xx+xx_w*0.68,middle_yy,scale*s_selected*global.font_ratio_resolution_xx,scale*s_selected,0,merge_color(c_black,c_white,abs(1-n_difficulty)),global.select_difficulty)
}
