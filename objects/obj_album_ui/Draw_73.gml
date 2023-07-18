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
	draw_sprite_ext(spr_album,1,x-32,y+32,image_xscale*global.font_ratio_resolution_xx*1.05,image_yscale*1.05,image_angle,c_black,0.3*image_alpha)
	
	var xscale = image_xscale*image_scale
	var yscale = image_yscale*image_scale
	draw_sprite_ext(sprite_index,image_index,x,y,xscale*global.font_ratio_resolution_xx,yscale,image_angle,image_blend,image_alpha)

	if instance_exists(code) && global.artifact_owned[global.requirement_type[code.n_stage]] < global.requirement_number[code.n_stage]
	{
		__brighting_col = #68646f
		draw_sprite_ext(spr_album,1,x,y,image_xscale*global.font_ratio_resolution_xx,image_yscale,image_angle,__brighting_col,0.5*image_alpha)
		draw_sprite_ext(spr_lock,0,x,y,image_xscale*0.7*global.font_ratio_resolution_xx,image_yscale*0.7,image_angle,c_white,image_alpha)
	}
	



	var _walpha__ = (w_alpha*2 > 1) ? 1 : w_alpha*2
	for(var i = 1; i <= 1.03; i += 0.01)
	{
		draw_sprite_ext(spr_album,0,x,y+i,image_xscale*global.font_ratio_resolution_xx*i,image_yscale*i,image_angle,merge_color(global.map_color,c_white,_walpha__),ui_alpha__cal)
	}
	
	draw_sprite_ext(spr_album,1,x,y,image_xscale*global.font_ratio_resolution_xx,image_yscale,image_angle,c_white,w_alpha_bg)
	
	if heart_alpha > 0
	{
		var scale = (10-heart_alpha)/13
		if (scale < 0)
		{
			scale = 0
		}
		draw_sprite_ext(spr_heart,0,x,y,image_xscale*global.font_ratio_resolution_xx*scale,image_yscale*scale,image_angle,c_white,heart_alpha)
	}
}



//스탯창 그림자
var ______yy = global.c_y-(1 - ui_alpha__cal)*1880-abs(global.map_scroll_ui_position)*256
//for(var i = 0; i <= 16; i += 0.5)
//{
//draw_sprite_ext(spr_status,0,global.c_x-(1 - ui_alpha__cal)*1880,global.c_y+i,global.font_ratio_resolution_xx,1.15,0,#d9d1dc,0.02*ui_alpha__cal)
//draw_sprite_ext(spr_square,0,global.c_x+1480-(1 - ui_alpha__cal)*1880,global.c_y+80+i,0.5*global.font_ratio_resolution_xx,0.5,45,#d9d1dc,0.02*ui_alpha__cal)
//draw_sprite_ext(spr_list_name,0,global.c_w-640*1.4,______yy,global.font_ratio_resolution_xx,1,0,#d9d1dc,0.02*ui_alpha__cal)
//}
draw_sprite_ext(spr_status,0,global.c_x-(1 - ui_alpha__cal)*1880,global.c_y+16,global.font_ratio_resolution_xx,1.15,0,c_black,0.3*ui_alpha__cal)
draw_sprite_ext(spr_square,0,global.c_x+1480-(1 - ui_alpha__cal)*1880,global.c_y+80+16,0.5*global.font_ratio_resolution_xx,0.5,45,c_black,0.3*ui_alpha__cal)


var gradient_color = merge_color(c_white,c_black,0.1)
//스텟 창
draw_sprite_general(spr_status,0,0,0,sprite_get_width(spr_status),sprite_get_height(spr_status),global.c_x-(1 - ui_alpha__cal)*1880,global.c_y,global.font_ratio_resolution_xx,1.15,0,gradient_color,gradient_color,c_white,c_white,ui_alpha__cal)


draw_sprite_ext(spr_square,0,global.c_x+1480-(1 - ui_alpha__cal)*1880,global.c_y+80,0.5*global.font_ratio_resolution_xx,0.5,45,c_white,ui_alpha__cal)


//레벨 바
draw_sprite_ext(spr_level_bar,0,global.c_x-(1 - ui_alpha__cal)*1880,global.c_y+158,0.7*global.font_ratio_resolution_xx,0.7,0,#171628,ui_alpha__cal)
draw_sprite_part_ext(spr_level_bar,0,0,0,(global.exp_for_draw/global.max_exp)*1760,64,global.c_x-(1 - ui_alpha__cal)*1880,global.c_y+158,0.7*global.font_ratio_resolution_xx,0.7,merge_color(merge_color(c_white,global.player_color,0.5+(global.exp/global.max_exp)*0.5),c_white,global.exp_w_alpha),ui_alpha__cal)
draw_text_kl_scale(global.c_x-(1 - ui_alpha__cal)*1880+32,global.c_y+148,"Level "+string(global.level),64,-1,ui_alpha__cal,c_white,0,-1,normal_font,0.5*global.font_ratio_resolution_xx,0.5,0)


//환경설정 버튼
draw_text_k_scale(global.c_x+104,global.c_y+450,"Setting"+((global.mobile_mode == 1) ? "" : "\n[ESC]"),80,-1,ui_alpha__cal,c_white,0,0,normal_font,0.5*global.font_ratio_resolution_xx,0.5,0)
draw_sprite_ext(spr_gear,0,global.c_x+100,global.c_y+400+16,0.17*global.font_ratio_resolution_xx,0.17,0,c_black,0.3*ui_alpha__cal)
draw_sprite_ext(spr_gear,0,global.c_x+100,global.c_y+400,0.17*global.font_ratio_resolution_xx,0.17,0,c_white,ui_alpha__cal)


//캐릭터 변경 버튼
draw_text_k_scale(global.c_x+104,global.c_y+700,"Character"+((global.mobile_mode == 1) ? "" : "\n[Q]"),80,-1,ui_alpha__cal,c_white,0,0,normal_font,0.5*global.font_ratio_resolution_xx,0.5,0)
draw_sprite_ext(spr_W,global.player_skin,global.c_x+100,global.c_y+660+16,0.17*global.font_ratio_resolution_xx,0.17,0,c_black,0.3*ui_alpha__cal)
draw_sprite_ext(spr_W,global.player_skin,global.c_x+100,global.c_y+660,0.17*global.font_ratio_resolution_xx,0.17,0,c_white,ui_alpha__cal)

//리더보드 랭크 순위 버튼
if global.n_map_list != 2
{
	draw_text_k_scale(global.c_x+104,global.c_y+950,"Ranking"+((global.mobile_mode == 1) ? "" : "\n[Tab]"),80,-1,ui_alpha__cal,c_white,0,0,normal_font,0.5*global.font_ratio_resolution_xx,0.5,0)
	draw_sprite_ext(spr_star,global.player_skin,global.c_x+100,global.c_y+910+16,0.17*global.font_ratio_resolution_xx,0.17,0,c_black,0.3*ui_alpha__cal)
	draw_sprite_ext(spr_star,global.player_skin,global.c_x+100,global.c_y+910,0.17*global.font_ratio_resolution_xx,0.17,0,c_white,ui_alpha__cal)
}



//리스트 이름 표기창
var __mobile__movement = global.reload_n_map_list_value_animation
__mobile__movement = (__mobile__movement > 1) ? 1 : __mobile__movement;
__mobile__movement = (__mobile__movement < -1) ? -1 : __mobile__movement;
var __xx = global.c_w-640*1.4-__mobile__movement*128
var key_Lpressed = keyboard_check(vk_left)
var key_Rpressed = keyboard_check(vk_right)
//draw_sprite_ext(spr_list_name,0,__xx,______yy,1,1,0,c_white,ui_alpha__cal)
draw_sprite_general(spr_list_name,0,0,0,sprite_get_width(spr_list_name),sprite_get_height(spr_list_name),__xx-sprite_get_width(spr_list_name)*0.5,______yy,1,1,0,gradient_color,gradient_color,c_white,c_white,ui_alpha__cal)


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
	draw_sprite_ext(spr_gear,0,__xx-210,______yy+72,0.12,0.12,15,#171628,ui_alpha__cal*(1-abs(__mobile__movement)))
	draw_text_k_scale(__xx+25,______yy+24,"유저 제작 커스텀 곡",64,-1,ui_alpha__cal*(1-abs(__mobile__movement)),#171628,0,0,normal_font,0.65*global.font_ratio_resolution_xx,0.65,0)
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





var xx = camera_get_view_x(view_camera[0])
var xx_w = camera_get_view_width(view_camera[0])
var yy = camera_get_view_y(view_camera[0])
var yy_h = camera_get_view_height(view_camera[0])

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
	draw_text_k_scale(x-260-global.mobile_mode*64,middle_yy+590+global.mobile_mode*64+8,"Normal\nRank",64,-1,0.3*dis__,c_black,0,0,normal_font,fontsize1*global.font_ratio_resolution_xx,fontsize1,0)
	draw_text_k_scale(x-260-global.mobile_mode*64,middle_yy+680+global.mobile_mode*96+8,string(global.n_rank[global.n_map_id]),64,-1,0.3*dis__,c_black,0,0,normal_font,fontsize2*global.font_ratio_resolution_xx,fontsize2,0)
	if (global.n_score[global.n_map_id] != "--")
	{
		draw_text_k_scale(x-260-global.mobile_mode*64,middle_yy+750+global.mobile_mode*96+8,string(global.n_score[global.n_map_id]),64,-1,0.3*dis__,c_black,0,0,normal_font,fontsize2*global.font_ratio_resolution_xx*0.8,fontsize2*0.8,0)
	}

	draw_text_k_scale(x-global.mobile_mode*64,middle_yy+590+global.mobile_mode*64+8,"Hardcore\nRank",64,-1,0.3*dis__,c_black,0,0,normal_font,fontsize1*global.font_ratio_resolution_xx,fontsize1,0)
	draw_text_k_scale(x-global.mobile_mode*64,middle_yy+680+global.mobile_mode*96+8,string(global.n_rank_hardcore[global.n_map_id]),64,-1,0.3*dis__,c_black,0,0,normal_font,fontsize2*global.font_ratio_resolution_xx,fontsize2,0)
	if (global.n_score_hardcore[global.n_map_id] != "--")
	{
		draw_text_k_scale(x-global.mobile_mode*64,middle_yy+750+global.mobile_mode*96+8,string(global.n_score_hardcore[global.n_map_id]),64,-1,0.3*dis__,c_black,0,0,normal_font,fontsize2*global.font_ratio_resolution_xx*0.8,fontsize2*0.8,0)
	}

	draw_text_k_scale(x+260+global.mobile_mode*64,middle_yy+620+global.mobile_mode*64+8,"아티팩트 수집",64,-1,0.3*dis__,c_black,0,0,normal_font,fontsize3*global.font_ratio_resolution_xx,fontsize3,0)
	draw_text_k_scale(x+260+global.mobile_mode*64,middle_yy+680+global.mobile_mode*96+8,string(global.n_artifact[global.n_map_id]),64,-1,0.3*dis__,c_black,0,0,normal_font,fontsize2*global.font_ratio_resolution_xx,fontsize2,0)



	draw_text_k_scale(x-260-global.mobile_mode*64,middle_yy+590+global.mobile_mode*64,"Normal\nRank",64,-1,dis__,c_white,0,0,normal_font,fontsize1*global.font_ratio_resolution_xx,fontsize1,0)
	draw_text_k_scale(x-260-global.mobile_mode*64,middle_yy+680+global.mobile_mode*96,string(global.n_rank[global.n_map_id]),64,-1,dis__,c_white,0,0,normal_font,fontsize2*global.font_ratio_resolution_xx,fontsize2,0)
	if (global.n_score[global.n_map_id] != "--")
	{
		draw_text_k_scale(x-260-global.mobile_mode*64,middle_yy+750+global.mobile_mode*96,string(global.n_score[global.n_map_id]),64,-1,dis__,c_white,0,0,normal_font,fontsize2*global.font_ratio_resolution_xx*0.8,fontsize2*0.8,0)
	}

	draw_text_k_scale(x-global.mobile_mode*64,middle_yy+590+global.mobile_mode*64,"Hardcore\nRank",64,-1,dis__,c_white,0,0,normal_font,fontsize1*global.font_ratio_resolution_xx,fontsize1,0)
	draw_text_k_scale(x-global.mobile_mode*64,middle_yy+680+global.mobile_mode*96,string(global.n_rank_hardcore[global.n_map_id]),64,-1,dis__,c_white,0,0,normal_font,fontsize2*global.font_ratio_resolution_xx,fontsize2,0)
	if (global.n_score_hardcore[global.n_map_id] != "--")
	{
		draw_text_k_scale(x-global.mobile_mode*64,middle_yy+750+global.mobile_mode*96,string(global.n_score_hardcore[global.n_map_id]),64,-1,dis__,c_white,0,0,normal_font,fontsize2*global.font_ratio_resolution_xx*0.8,fontsize2*0.8,0)
	}

	draw_text_k_scale(x+260+global.mobile_mode*64,middle_yy+620+global.mobile_mode*64,"아티팩트 수집",64,-1,dis__,c_white,0,0,normal_font,fontsize3*global.font_ratio_resolution_xx,fontsize3,0)
	draw_text_k_scale(x+260+global.mobile_mode*64,middle_yy+680+global.mobile_mode*96,string(global.n_artifact[global.n_map_id]),64,-1,dis__,c_white,0,0,normal_font,fontsize2*global.font_ratio_resolution_xx,fontsize2,0)
}

if global.sync_setting_alpha >= 0.01
{
	draw_set_alpha(global.sync_setting_alpha*0.93)
	draw_set_color(c_black)
	draw_line_width(global.c_x,global.c_y,global.c_w,global.c_h,room_width)

	for(var i = -1; i <= 1; i++)
	{
		var scale = (i != 1) ? global.sync_setting_circle_scale[i+1]*0.15 : global.sync_setting_circle_scale[i+1]*0.3
		var sprite__ = (i != 1) ? spr_circle : spr_circle_outline;
		draw_sprite_ext(sprite__,0,middle_xx+i*256,middle_yy,scale,scale,0,merge_color(c_white,global.player_color,global.setting_beat_w_alpha[i+1]),global.sync_setting_alpha)
	
		global.sync_setting_circle_scale[i+1] += (1 - global.sync_setting_circle_scale[i+1])*0.1
		global.setting_beat_w_alpha[i+1] += (0 - global.setting_beat_w_alpha[i+1])*0.1
	}

	if global.mobile_mode != 1
	{
		draw_text_k_scale(xx+64,yy+yy_h*0.7,"화면 리로드",64,-1,global.sync_setting_alpha,c_white,0,-1,normal_font,fontsize2*global.font_ratio_resolution_xx,fontsize2,0)
		draw_text_k_scale(xx+64,yy+yy_h*0.735,"화면(프레임)이 끊긴다면 사용해보세요",64,-1,global.sync_setting_alpha,c_white,0,-1,light_font,fontsize3*global.font_ratio_resolution_xx,fontsize3,0)

		var fullscreen_now = (window_get_fullscreen()) ? " (fullscreen)" : "";
		draw_text_k_scale(xx+64,yy+yy_h*0.85,"해상도  ["+string(window_get_width())+"x"+string(window_get_height())+"]"+string(fullscreen_now),64,-1,global.sync_setting_alpha,c_white,0,-1,normal_font,fontsize2*global.font_ratio_resolution_xx,fontsize2,0)
		draw_text_k_scale(xx+64,yy+yy_h*0.885,"화면 리로드시에도, 화면이 끊긴다면 해상도를 낮춰보세요",64,-1,global.sync_setting_alpha,c_white,0,-1,light_font,fontsize3*global.font_ratio_resolution_xx,fontsize3,0)
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
	draw_text_k_scale(xx+xx_w-64,yy+yy_h*0.885,"음악 싱크가 맞지 않는다면 사용해보세요",64,-1,global.sync_setting_alpha,c_white,0,1,light_font,fontsize3*global.font_ratio_resolution_xx,fontsize3,0)
}






//게임 플레이 전 난이도 설정
if (global.select_difficulty > 0 && global.title_menu_animation1 == -1)
{
	draw_set_alpha(global.select_difficulty*0.93)
	draw_set_color(c_black)
	draw_line_width(global.c_x,global.c_y,global.c_w,global.c_h,room_width)


	var scale = 1.2//*(image_xscale - (0.3+global.mobile_mode*0.5))
	var n_difficulty = global.selected_difficulty
	var dis_temp1 = check_distance(abs(n_difficulty),1);
	var dis_temp2 = check_distance(abs(1-n_difficulty),1);
	var dis_temp3 = check_distance(abs(-1-n_difficulty),1);
	var color_temp1 = merge_color(c_black,c_white,dis_temp1)
	var color_temp2 = merge_color(c_black,c_white,dis_temp2)
	var color_temp3 = merge_color(c_black,c_white,dis_temp3)
	var f_selected = (global.mobile_mode == 1) ? 1.8 : 1+dis_temp1*0.5
	var s_selected = (global.mobile_mode == 1) ? 1.8 : 1+dis_temp2*0.5
	var t_selected = (global.mobile_mode == 1) ? 1.8 : 1+dis_temp3*0.5
	var icon_scale = 0.2*(image_xscale - (0.3+global.mobile_mode*0.5))


	var button_1_xx = xx+xx_w*0.32
	var button_2_xx = xx+xx_w*0.68
	//game start (난이도 선택 완료후 진짜로 시작)
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
		
		

		if (global.t_selected_difficulty == 1 || (global.n_map_id >= 0 && global.t_selected_difficulty != 1))
		{
			if (keyboard_check_pressed(vk_space) || keyboard_check_pressed(vk_enter))
			{
				code.gamestart = 1
				global.paused = 0
				global.t_select_difficulty = 0
				audio_play_sound(ding_dong,0,false,global.master_volume*global.sfx_volume*2)
				window_set_cursor(cr_none)
			}
		
			if mouse_check_button_pressed(mb_left)
			{
				if (point_distance(mouse_x,mouse_y,button_1_xx,middle_yy) < 256*f_selected)
				{
					global.t_selected_difficulty = 1
					code.gamestart = 1
					global.paused = 0
					audio_play_sound(ding_dong,0,false,global.master_volume*global.sfx_volume*2)
					window_set_cursor(cr_none)
					global.t_select_difficulty = 0
				}
				else if (point_distance(mouse_x,mouse_y,button_2_xx,middle_yy) < 256*s_selected)
				{
					global.t_selected_difficulty = 0
					if (global.n_map_id >= 0 && global.level >= (global.detailed_difficulty[global.n_map_id]+1)*2)
					{
						code.gamestart = 1
						global.paused = 0
						window_set_cursor(cr_none)
						audio_play_sound(ding_dong,0,false,global.master_volume*global.sfx_volume*2)
						global.t_select_difficulty = 0
					}
				}
				else
				{
					code.gamestart = 0
					code.automatic_reload_leaderboard = 0
					audio_play_sound(cleared_sfx,0,false,global.master_volume*global.sfx_volume*4)
					global.t_select_difficulty = 0
				}
			}
		}
	}
	

	draw_text(xx+64,yy+64,n_difficulty)
	draw_sprite_ext(spr_circle,0,button_1_xx,middle_yy,scale*f_selected*global.font_ratio_resolution_xx*0.5,scale*f_selected*0.5,0,merge_color(c_white,c_black,dis_temp1),global.select_difficulty)
	draw_sprite_ext(spr_music,0,button_1_xx,middle_yy-f_selected*130,icon_scale*f_selected*global.font_ratio_resolution_xx,icon_scale*f_selected,image_angle,merge_color(c_black,c_white,dis_temp1),global.select_difficulty)
	draw_text_k_scale(button_1_xx,middle_yy-f_selected*64,"Normal",64,-1,global.select_difficulty,color_temp1,0,0,normal_font,0.65*f_selected*global.font_ratio_resolution_xx,0.65*f_selected,0)
	draw_text_k_scale(button_1_xx,middle_yy,"특정 하이라이트 부분에서\n세이브 포인트를 제공합니다",scale*48*f_selected,-1,global.select_difficulty,color_temp1,0,0,normal_font,0.35*f_selected*global.font_ratio_resolution_xx,0.35*f_selected,0)

	
	draw_sprite_ext(spr_circle,0,button_2_xx,middle_yy,scale*s_selected*global.font_ratio_resolution_xx*0.5,scale*s_selected*0.5,0,merge_color(c_white,c_black,dis_temp2),global.select_difficulty)
	draw_sprite_ext(spr_heart,0,button_2_xx,middle_yy-s_selected*130,icon_scale*s_selected*global.font_ratio_resolution_xx,icon_scale*s_selected,image_angle,color_temp2,global.select_difficulty)
	draw_text_k_scale(button_2_xx,middle_yy-s_selected*64,"Hardcore",64,-1,global.select_difficulty,color_temp2,0,0,normal_font,0.65*s_selected*global.font_ratio_resolution_xx,0.65*s_selected,0)
	draw_text_k_scale(button_2_xx,middle_yy,"세이브 포인트를 제공하지 않고 무적 쿨타임이 짧아지며,\n랜덤한 패턴과 새로운 패턴이 등장합니다.\n\n클리어 시,\n많은 경험치와 아티팩트를 중복하여 획득할 수 있으며,\n특정 캐릭터를 획득할 수 있습니다.",scale*48*s_selected,-1,global.select_difficulty,color_temp2,0,0,normal_font,0.35*s_selected*global.font_ratio_resolution_xx,0.35*s_selected,0)
	
	
	//draw_sprite_ext(spr_circle,0,middle_xx,middle_yy+yy_h*0.15,scale*t_selected*global.font_ratio_resolution_xx*0.5,scale*t_selected*0.5,0,merge_color(c_white,c_black,dis_temp3),global.select_difficulty)
	//draw_sprite_ext(spr_star,0,middle_xx,middle_yy+yy_h*0.15-t_selected*130,icon_scale*t_selected*global.font_ratio_resolution_xx,icon_scale*t_selected,image_angle,color_temp3,global.select_difficulty)
	//draw_text_k_scale(middle_xx,middle_yy+yy_h*0.15-t_selected*64,"Nightcore",64,-1,global.select_difficulty,merge_color(c_black,c_white,dis_temp3),0,0,normal_font,0.65*t_selected*global.font_ratio_resolution_xx,0.65*t_selected,0)
	//draw_text_k_scale(middle_xx,middle_yy+yy_h*0.15,"특정 하이라이트 부분에서\n세이브 포인트를 제공하며,\n음악의 속도가 조금 빨라집니다.",scale*48*t_selected,-1,global.select_difficulty,color_temp3,0,0,normal_font,0.35*t_selected*global.font_ratio_resolution_xx,0.35*t_selected,0)
	
	if (global.n_map_id >= 0)
	{
		var unlock_level = (global.detailed_difficulty[global.n_map_id]+1)*2;
		if (global.level < unlock_level)
		{
			draw_sprite_ext(spr_circle,0,button_2_xx,middle_yy,scale*s_selected*global.font_ratio_resolution_xx*0.5,scale*s_selected*0.5,0,c_black,global.select_difficulty*0.7)
			draw_sprite_ext(spr_lock,1,button_2_xx,middle_yy,scale*s_selected*global.font_ratio_resolution_xx*0.5,scale*s_selected*0.5,0,color_temp2,global.select_difficulty)
			draw_text_k_scale(button_2_xx,middle_yy,"해금 조건\n"+string(unlock_level)+"레벨 이상",scale*48*s_selected,-1,global.select_difficulty,merge_color(c_white,c_black,abs(1-n_difficulty)*0.5),0,0,normal_font,0.5*s_selected*global.font_ratio_resolution_xx,0.5*s_selected,0)
		}
	}


	//outline
	draw_sprite_ext(spr_circle_outline_light,0,xx+xx_w*0.32,middle_yy,scale*f_selected*global.font_ratio_resolution_xx,scale*f_selected,0,color_temp1,global.select_difficulty)
	draw_sprite_ext(spr_circle_outline_light,0,xx+xx_w*0.68,middle_yy,scale*s_selected*global.font_ratio_resolution_xx,scale*s_selected,0,color_temp2,global.select_difficulty)
	//draw_sprite_ext(spr_circle_outline_light,0,middle_xx,middle_yy+yy_h*0.15,scale*t_selected*global.font_ratio_resolution_xx,scale*t_selected,0,color_temp3,global.select_difficulty)
}
/**/




draw_set_color(c_black)
draw_set_alpha(global.b_alpha)
draw_line_width(0,0,room_width,room_height,5000)

if instance_exists(code)
{
	if global.character_setting > 0
	{
		var scale = 2
		var __alpha = global.b_alpha/0.9
		draw_set_color(c_white)
		draw_line_width(middle_xx-(__alpha)*150,yy+yy_h*0.2,middle_xx+(__alpha)*150,yy+yy_h*0.2,5)
		draw_text_k_scale(middle_xx,yy+yy_h*0.1,"캐릭터 선택",scale*48,-1,__alpha,c_white,0,0,normal_font,0.56*global.font_ratio_resolution_xx*scale,0.56*scale,0)
		
		global.n_select_skin += (global.t_n_select_skin - global.n_select_skin)*0.1
		for(var i = 0; i < 21; i++)
		{
			var n_skin__ = (global.n_select_skin >= 0) ? global.n_select_skin : 0
			var col_ = c_white
			var unlocked = (global.unlocked_player_skin[i] == 0);
			var n_is_selected = (i == global.t_n_select_skin) ? 1.3 : 1
			var _dis_scale = (1-(abs(i-global.n_select_skin)/5))*n_is_selected
			var skin_name = global.unlocked_player_skin_name[i] 
			
			if (_dis_scale > 0.1)
			{
				if (unlocked)
				{
					shader_set(shFlash)
					col_ = c_gray
				}
				else
				{
					if (n_is_selected == 1.3)
					{
						var _margin = 8
						shader_set(shFlash)
						draw_sprite_ext(spr_illustrationCG,i,middle_xx-n_skin__*640+i*640-_margin,middle_yy+256*_dis_scale*1.3,global.font_ratio_resolution_xx*_dis_scale*1.3,_dis_scale*1.3,0,c_white,__alpha*_dis_scale)
						draw_sprite_ext(spr_illustrationCG,i,middle_xx-n_skin__*640+i*640+_margin,middle_yy+256*_dis_scale*1.3,global.font_ratio_resolution_xx*_dis_scale*1.3,_dis_scale*1.3,0,c_white,__alpha*_dis_scale)
						draw_sprite_ext(spr_illustrationCG,i,middle_xx-n_skin__*640+i*640,middle_yy+256*_dis_scale*1.3-_margin,global.font_ratio_resolution_xx*_dis_scale*1.3,_dis_scale*1.3,0,c_white,__alpha*_dis_scale)
						draw_sprite_ext(spr_illustrationCG,i,middle_xx-n_skin__*640+i*640,middle_yy+256*_dis_scale*1.3+_margin,global.font_ratio_resolution_xx*_dis_scale*1.3,_dis_scale*1.3,0,c_white,__alpha*_dis_scale)
						shader_reset()
					}
				}
			
				draw_sprite_ext(spr_illustrationCG,i,middle_xx-n_skin__*640+i*640,middle_yy+256*_dis_scale*1.3,global.font_ratio_resolution_xx*_dis_scale*1.3,_dis_scale*1.3,0,col_,__alpha*_dis_scale)
				shader_reset()
			
				if (unlocked)
				{
					skin_name = "???";
					draw_sprite_ext(spr_lock,0,middle_xx-n_skin__*640+i*640,middle_yy,global.font_ratio_resolution_xx*0.5*_dis_scale*1.3,0.5*_dis_scale*1.3,0,c_white,__alpha*_dis_scale)
				}
				else
				{
					var unlock_anime_alpha = global.unlocked_player_skin[i]-1;
					
					if (global.unlocked_player_skin[i] > 1.8)
					{
						if !instance_exists(explosion_effect)
						{
							audio_play_sound(glow_sfx,0,false,global.master_volume*global.sfx_volume)
							audio_play_sound(show_rank_sfx,0,false,global.sfx_volume*global.master_volume)
							var _ef = instance_create_depth(middle_xx,middle_yy,depth-20,explosion_effect)
							_ef.image_index = 6
							_ef.image_xscale = 2
							_ef.image_yscale = 2
							_ef.t_scale = 5
							_ef.image_blend = c_white
			
							for(var ii = 0; ii < 360; ii += 25)
							{
								var random_dir = ii+image_angle
								var effect_ = instance_create_depth(middle_xx+lengthdir_x(128,random_dir),middle_yy+lengthdir_y(128,random_dir),depth-20,movement_effect)
								effect_.image_xscale = 0.3
								effect_.image_yscale = 0.3
								effect_.direction = random_dir
								effect_.speed = 16
								effect_.image_blend = global.map_color
							}
						}
					}
					
					if (global.unlocked_player_skin[i] > 1)
					{
						global.unlocked_player_skin[i] += (0.99 - global.unlocked_player_skin[i])*0.07
					}
					else
					{
						if (global.can_show == 0)
						{
							global.acquired_skin = -4
							global.unlocked_player_skin[i] = 1;
							event_user(0)
							global.can_show = 0.1
						}
					}
					shader_set(shFlash)
					draw_sprite_ext(spr_illustrationCG,i,middle_xx-n_skin__*640+i*640,middle_yy+256*_dis_scale*1.3,global.font_ratio_resolution_xx*_dis_scale*1.3,_dis_scale*1.3,0,c_white,unlock_anime_alpha*__alpha*_dis_scale)
					shader_reset()
				}
				
				draw_text_k_scale(middle_xx-n_skin__*640+i*640,yy+yy_h*0.76,skin_name,scale*48,-1,__alpha*0.7*_dis_scale,c_white,0,0,normal_font,0.27*global.font_ratio_resolution_xx*scale*_dis_scale,0.27*scale*_dis_scale,0)
			}
		}


		if (global.can_show == 1)
		{
			if mouse_check_button_pressed(mb_left)
			{
				audio_play_sound(common_sfx1,0,false,0.2*global.master_volume*global.sfx_volume)
				if (mouse_x >= middle_xx+400)
				{
					global.t_n_select_skin++
				}
				else if (mouse_x <= middle_xx-400)
				{
					global.t_n_select_skin--
				}
				else
				{
					event_user(0)
				}
			}
		
			if (keyboard_check_pressed(vk_right) || keyboard_check_pressed(vk_left))
			{
				audio_play_sound(common_sfx1,0,false,0.2*global.master_volume*global.sfx_volume)
				global.t_n_select_skin += keyboard_check_pressed(vk_right)-keyboard_check_pressed(vk_left)
			}
		
			if (keyboard_check_pressed(vk_enter) || keyboard_check_pressed(vk_space))
			{
				event_user(0)
			}
		
		
			if (global.t_n_select_skin >= sprite_get_number(spr_illustrationCG))
			{
				global.t_n_select_skin = 0
			}
			else if global.t_n_select_skin < 0
			{
				global.t_n_select_skin = sprite_get_number(spr_illustrationCG)-1;
			}
		}
		
		
		
		draw_sprite_ext(spr_square_half,key_Rpressed,middle_xx-(__alpha)*600,16+middle_yy,0.2*global.font_ratio_resolution_xx*scale,0.2*scale,45,c_black,ui_alpha__cal*0.3)
		draw_sprite_ext(spr_square_half,key_Rpressed,middle_xx-(__alpha)*600,middle_yy,0.2*global.font_ratio_resolution_xx*scale,0.2*scale,45,c_white,ui_alpha__cal)
		
		draw_sprite_ext(spr_square_half,key_Rpressed,middle_xx+(__alpha)*600,16+middle_yy,0.2*global.font_ratio_resolution_xx*scale,0.2*scale,225,c_black,ui_alpha__cal*0.3)
		draw_sprite_ext(spr_square_half,key_Rpressed,middle_xx+(__alpha)*600,middle_yy,0.2*global.font_ratio_resolution_xx*scale,0.2*scale,225,c_white,ui_alpha__cal)
	}
	
	
	
	if (global.can_show == 1)
	{
		if (global.show_new_songs > 0 && (code.gamestart == 0 || code.gamestart >= 4))
		{
			if (global.t_b_alpha != -0.02)
			{
				global.t_b_alpha = 0.9
			}
	
			if (global.t_b_alpha == 0.9 && instance_exists(code) && code.gamestart == 0 && global.b_alpha > 0.8)
			{
				code.gamestart = 4
			}
			var scale = 2
			draw_set_color(c_white)
			draw_set_alpha((global.show_new_songs/100)*(1 - abs(global.new_song_scroll)/100))
			draw_line_width(middle_xx-global.show_new_songs*1.5,yy+yy_h*0.2,middle_xx+global.show_new_songs*1.5,yy+yy_h*0.2,5)
			

			if global.notice_title_sub != ""
			{
				draw_text_k_scale(middle_xx,yy+yy_h*0.066,global.notice_title,scale*48,-1,(global.show_new_songs/100)*(1 - abs(global.new_song_scroll)/100),c_white,0,0,normal_font,0.56*global.font_ratio_resolution_xx*scale,0.56*scale,0)
				draw_text_k_scale(middle_xx,yy+yy_h*0.13,global.notice_title_sub,scale*48,-1,(global.show_new_songs/100)*(1 - abs(global.new_song_scroll)/100),c_white,0,0,normal_font,0.32*global.font_ratio_resolution_xx*scale,0.32*scale,0)
			}
			else
			{
				draw_text_k_scale(middle_xx,yy+yy_h*0.1,global.notice_title,scale*48,-1,(global.show_new_songs/100)*(1 - abs(global.new_song_scroll)/100),c_white,0,0,normal_font,0.56*global.font_ratio_resolution_xx*scale,0.56*scale,0)
			}
	
			for(var i = 0; i < global.new_unlocked_map_num; i++)
			{
				if (global.unlocked_music_name_new_list_rightside[0] == "")
				{
					draw_text_k_scale(middle_xx,yy+yy_h*0.24-global.new_song_scroll+i*64*scale,global.unlocked_music_name_new_list[i],scale*48,-1,global.show_new_songs/130,global.unlocked_music_name_new_list_color[i],0,0,normal_font,0.35*global.font_ratio_resolution_xx*scale,0.35*scale,0)
				}
				else
				{
					if (code.automatic_reload_leaderboard == 0)
					{
						draw_text_k_scale(middle_xx-640,yy+yy_h*0.24-global.new_song_scroll+i*64*scale,global.unlocked_music_name_new_list[i],scale*48,-1,global.show_new_songs/130,global.unlocked_music_name_new_list_color[i],0,-1,normal_font,0.35*global.font_ratio_resolution_xx*scale,0.35*scale,0)
						draw_text_k_scale(middle_xx+640,yy+yy_h*0.24-global.new_song_scroll+i*64*scale,global.unlocked_music_name_new_list_rightside[i],scale*48,-1,global.show_new_songs/130,global.unlocked_music_name_new_list_color[i],0,1,normal_font,0.35*global.font_ratio_resolution_xx*scale,0.35*scale,0)
					}
					else
					{
						if (i == 0)
						{
							var temp_cal = floor(code.automatic_reload_leaderboard/30);
							var temp_str = "."
							if (temp_cal == 1 || temp_cal == 4 || temp_cal == 7)
							{
								temp_str = ".."
							}
							else if (temp_cal == 2 || temp_cal == 5 || temp_cal == 8)
							{
								temp_str = "..."
							}

							draw_text_k_scale(middle_xx,yy+yy_h*0.5,temp_str,scale*48,-1,global.show_new_songs/130,global.unlocked_music_name_new_list_color[i],0,0,normal_font,0.35*global.font_ratio_resolution_xx*scale,0.35*scale,0)
						}
					}
				}
			}
	

			if (mouse_wheel_up() && global.t_new_song_scroll > 0)
			{
				global.t_new_song_scroll -= 150;
			}
	
			if (mouse_wheel_down() && global.t_new_song_scroll < global.new_unlocked_map_num*150-1500)
			{
				global.t_new_song_scroll += 150;
			}
			
			if (global.notice_title == "Ranking")
			{
				if (keyboard_check_pressed(vk_left) || keyboard_check_pressed(vk_up))
				{
					global.t_selected_difficulty--
					global.b_loaded_ranking = -1
					audio_play_sound(common_sfx1,0,false,0.2*global.master_volume*global.sfx_volume)
					
					code.automatic_reload_leaderboard = 1
				}
				else if (keyboard_check_pressed(vk_right) || keyboard_check_pressed(vk_down))
				{
					global.t_selected_difficulty++
					global.b_loaded_ranking = -1
					audio_play_sound(common_sfx1,0,false,0.2*global.master_volume*global.sfx_volume)

					code.automatic_reload_leaderboard = 1
				}
				else if global.b_alpha >= 0.85 && (keyboard_check_pressed(vk_anykey) || mouse_check_button_pressed(mb_left))
				{
					global.t_b_alpha = -0.02
					code.gamestart = 5
					alarm[4] = 30
				}
				
				
				if global.t_selected_difficulty > 1
				{
					global.t_selected_difficulty = 0
				}
				else if global.t_selected_difficulty < 0
				{
					global.t_selected_difficulty = 1
				}
				
				if (string_pos("(Hardcore)", global.stage_map_difficulty[code.n_stage]) != 0)
				{
					global.t_selected_difficulty = 0
				}
			}
			else if (global.notice_title == "잠시만요!")
			{
				if (holding_now > 0)
				{
					draw_set_color(c_white)
					draw_set_alpha(holding_now/100)
					draw_line_width(global.c_x,yy+yy_h*0.55,global.c_x+global.c_w*(holding_now/180),yy+yy_h*0.55,15)
				}
				
				if (keyboard_check_pressed(vk_escape))
				{
					global.t_b_alpha = -0.02
					code.gamestart = 5
					alarm[4] = 30
				}
				else
				{
					var can_usable = 0
					if (keyboard_string != "")
					{
						if (string_length(keyboard_string) <= 15)
						{
							keyboard_string = string_replace_all(keyboard_string," ","");
							if (string_length(keyboard_string) >= 3)
							{
								can_usable = 1;
							}
						}
						else
						{
							keyboard_string = string_delete(keyboard_string,16,1);
							can_usable = 1
						}
					
						if (holding_now != -1 && keyboard_check(vk_space))
						{
							holding_now++;
						}
						
						if (keyboard_check_released(vk_space))
						{
							holding_now = 0
						}
					}
				
					global.unlocked_music_name_new_list[1] = keyboard_string+"|";
					global.unlocked_music_name_new_list_color[1] = merge_color(c_black,c_white,0.7);
				}
				
				
				if holding_now > 180
				{
					global.t_b_alpha = -0.02
					code.gamestart = 5
					alarm[4] = 30
					global.nickname = keyboard_string;
					holding_now = -1
				}
			}
			else if global.b_alpha >= 0.85 && (keyboard_check_pressed(vk_anykey) || mouse_check_button_pressed(mb_left))
			{
				global.t_b_alpha = -0.02
				code.gamestart = 5
				alarm[4] = 30
			}

			
			
	
			if (global.t_b_alpha == -0.02)
			{
				global.show_new_songs += (-10 - global.show_new_songs)*0.1
			}
			else
			{
				if (global.show_new_songs < 50)
				{
					global.t_new_song_scroll = 0;
				}
				global.show_new_songs += (100 - global.show_new_songs)*0.1
			}
		}
		else
		{
			if (global.t_b_alpha == -0.02 && code.gamestart >= 4)
			{
				global.t_b_alpha = -0.01
				global.unlocked_music_name_new_list_rightside[0] = "";
				global.notice_title_sub = ""
				global.notice_title = ""
				code.gamestart = 0
			}
		}
	}
}



draw_set_color(c_white)
draw_set_alpha(global.w_alpha)
draw_line_width(0,0,room_width,room_height,5000)



if (global.show_title_menu != 0)
{
	draw_set_color(c_black)
	draw_set_alpha(1)
	draw_line_width(0,0,room_width,room_height,5000)
	draw_sprite_ext(spr_W,0,middle_xx,middle_yy,global.font_ratio_resolution_xx*image_xscale*0.4,image_yscale*0.4,0,c_white,1)
	
	if (credit_text_alpha > 0)
	{
		draw_text_k_scale(middle_xx,middle_yy-480,"Presented by",64,-1,credit_text_alpha,c_white,0,0,normal_font,global.font_ratio_resolution_xx*0.7,0.7,0)
		
		draw_sprite_ext(Sprite49,0,middle_xx,middle_yy,global.font_ratio_resolution_xx*1.1,1.1,0,c_white,credit_text_alpha)
		draw_text_k_scale(middle_xx-32,middle_yy+190,"Studio",64,-1,credit_text_alpha,c_white,0,0,normal_font,global.font_ratio_resolution_xx*0.8,0.8,0)
	}
}


if (global.title_menu_animation1 >= 1)
{
	var color_blind = (global.map_color == c_black) ? merge_color(c_white,c_black,0.9) : global.map_color;
	draw_set_color(color_blind)
	draw_set_alpha(1)
	draw_rectangle(xx+xx_w*blind_xx_start,yy,xx+xx_w*blind_xx_final,xx_w,false)
}
