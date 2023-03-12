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
	draw_sprite_ext(spr_album,1,x-32,y+32,image_xscale*global.font_ratio_resolution_xx*1.05,image_yscale*1.05,image_angle,merge_color(__brighting_col,c_black,0.3),0.5*image_alpha)
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
for(var i = 0; i <= 16; i += 0.5)
{
draw_sprite_ext(spr_status,0,global.c_x-(1 - ui_alpha__cal)*1880,global.c_y+i,1,1,0,#d9d1dc,0.02*ui_alpha__cal)
draw_sprite_ext(spr_square,0,global.c_x+1480-(1 - ui_alpha__cal)*1880,global.c_y+80+i,0.5,0.5,45,#d9d1dc,0.02*ui_alpha__cal)
draw_sprite_ext(spr_list_name,0,global.c_w-640*1.4,global.c_y-(1 - ui_alpha__cal)*1880+i,1,1,0,#d9d1dc,0.02*ui_alpha__cal)
}

//스텟 창
draw_sprite_ext(spr_status,0,global.c_x-(1 - ui_alpha__cal)*1880,global.c_y,1,1,0,c_white,ui_alpha__cal)
draw_sprite_ext(spr_square,0,global.c_x+1480-(1 - ui_alpha__cal)*1880,global.c_y+80,0.5,0.5,45,c_white,ui_alpha__cal)


//리스트 이름 표기창
var __mobile__movement = global.reload_n_map_list_value_animation
__mobile__movement = (__mobile__movement > 1) ? 1 : __mobile__movement;
__mobile__movement = (__mobile__movement < -1) ? -1 : __mobile__movement;
var __xx = global.c_w-640*1.4-__mobile__movement*128
var key_Lpressed = keyboard_check(vk_left)
var key_Rpressed = keyboard_check(vk_right)
draw_sprite_ext(spr_list_name,0,__xx,global.c_y-(1 - ui_alpha__cal)*1880,1,1,0,c_white,ui_alpha__cal)

if global.mobile_mode = 0
{
draw_sprite_ext(spr_key,key_Lpressed,__xx-500,global.c_y+64-(1 - ui_alpha__cal)*1880,2,2,0,c_white,ui_alpha__cal)
draw_sprite_ext(spr_key,key_Rpressed,__xx+500,global.c_y+64-(1 - ui_alpha__cal)*1880,-2,2,0,c_white,ui_alpha__cal)
}
else
{
draw_sprite_ext(spr_square_half,key_Lpressed,__xx-500,global.c_y+64-(1 - ui_alpha__cal)*1880,0.2,0.2,45,c_white,ui_alpha__cal)
draw_sprite_ext(spr_square_half,key_Rpressed,__xx+500,global.c_y+64-(1 - ui_alpha__cal)*1880,0.2,0.2,225,c_white,ui_alpha__cal)
}

if global.n_map_list = 0
{
draw_sprite_ext(spr_music,0,__xx-75,global.c_y+64-(1 - ui_alpha__cal)*1880,0.2,0.2,-15,#171628,ui_alpha__cal*(1-abs(__mobile__movement)))
draw_text_k_scale(__xx+25,global.c_y+52-(1 - ui_alpha__cal)*1880,"모든 곡",64,-1,ui_alpha__cal*(1-abs(__mobile__movement)),#171628,0,0,normal_font,0.65*global.font_ratio_resolution_xx,0.65,0)
}
if global.n_map_list = 1
{
draw_sprite_ext(spr_heart,0,__xx-125,global.c_y+72-(1 - ui_alpha__cal)*1880,0.1,0.1,0,#171628,ui_alpha__cal*(1-abs(__mobile__movement)))
draw_text_k_scale(__xx+25,global.c_y+52-(1 - ui_alpha__cal)*1880,"좋아요 한 곡",64,-1,ui_alpha__cal*(1-abs(__mobile__movement)),#171628,0,0,normal_font,0.65*global.font_ratio_resolution_xx,0.65,0)
}
if global.n_map_list = 2
{
draw_sprite_ext(spr_gear,0,__xx-110,global.c_y+72-(1 - ui_alpha__cal)*1880,0.12,0.12,15,#171628,ui_alpha__cal*(1-abs(__mobile__movement)))
draw_text_k_scale(__xx+25,global.c_y+52-(1 - ui_alpha__cal)*1880,"커스텀 곡",64,-1,ui_alpha__cal*(1-abs(__mobile__movement)),#171628,0,0,normal_font,0.65*global.font_ratio_resolution_xx,0.65,0)
}
if global.n_map_list = 3
{
draw_sprite_ext(spr_lock,1,__xx-125,global.c_y+72-(1 - ui_alpha__cal)*1880,0.1,0.1,0,#171628,ui_alpha__cal*(1-abs(__mobile__movement)))
draw_text_k_scale(__xx+25,global.c_y+52-(1 - ui_alpha__cal)*1880,"해금 된 곡",64,-1,ui_alpha__cal*(1-abs(__mobile__movement)),#171628,0,0,normal_font,0.65*global.font_ratio_resolution_xx,0.65,0)
}


draw_text_k_scale(global.c_x+32-(1 - ui_alpha__cal)*1880,global.c_y+10,"Artifacts",64,-1,ui_alpha__cal,#171628,0,-1,normal_font,0.5*global.font_ratio_resolution_xx,0.5,0)
for(var i = 0; i <= 7; i++)
{
draw_sprite_ext(spr_W,i,global.c_x+64+150*i-(1 - ui_alpha__cal)*1880,global.c_y+95,0.15,0.15,20,#5a5257,ui_alpha__cal)
draw_text_k_scale(global.c_x+96+150*i-(1 - ui_alpha__cal)*1880,global.c_y+90,"x"+string(global.artifact_owned[i]),64,-1,ui_alpha__cal,#5a5257,0,-1,normal_font,0.5*global.font_ratio_resolution_xx,0.5,0)
}






var yy = camera_get_view_y(view_camera[0])
var yy_h = camera_get_view_height(view_camera[0])
var xx = camera_get_view_x(view_camera[0])
var xx_w = camera_get_view_width(view_camera[0])

var dis__ = (1 - abs(y - (yy+yy_h*0.5))/256)
if dis__ < 0
{
dis__ = 0
}


draw_sprite_ext(spr_square,0,x,yy+yy_h*0.5+512+global.mobile_mode*64,dis__*0.5,dis__*0.5,45,c_white,image_alpha)
  
if instance_exists(code) && code.gamestart != 1 && code.gamestart != 2 && code.gamestart != 3
{
var fontsize1 = 0.55*(1+global.mobile_mode*0.3)
var fontsize2 = 0.65*(1+global.mobile_mode*0.3)
var fontsize3 = 0.52*(1+global.mobile_mode*0.3)

draw_text_k_scale(x-128-global.mobile_mode*64,yy+yy_h*0.5+620+global.mobile_mode*96,"Rank",64,-1,dis__,c_white,0,0,light_font,fontsize1*global.font_ratio_resolution_xx,fontsize1,0)
draw_text_k_scale(x-128-global.mobile_mode*64,yy+yy_h*0.5+680+global.mobile_mode*96,string(global.n_rank[code.n_stage]),64,-1,dis__,c_white,0,0,normal_font,fontsize2*global.font_ratio_resolution_xx,fontsize2,0)

draw_text_k_scale(x+128+global.mobile_mode*64,yy+yy_h*0.5+620+global.mobile_mode*96,"아티펙트 수집",64,-1,dis__,c_white,0,0,light_font,fontsize3*global.font_ratio_resolution_xx,fontsize3,0)
draw_text_k_scale(x+128+global.mobile_mode*64,yy+yy_h*0.5+680+global.mobile_mode*96,string(global.n_artifact[code.n_stage]),64,-1,dis__,c_white,0,0,normal_font,fontsize2*global.font_ratio_resolution_xx,fontsize2,0)
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
	draw_sprite_ext(sprite__,0,xx+xx_w*0.5+i*256,yy+yy_h*0.5,scale,scale,0,merge_color(c_white,global.player_color,global.setting_beat_w_alpha[i+1]),global.sync_setting_alpha)
	
	global.sync_setting_circle_scale[i+1] += (1 - global.sync_setting_circle_scale[i+1])*0.1
	global.setting_beat_w_alpha[i+1] += (0 - global.setting_beat_w_alpha[i+1])*0.1
	}

draw_text_k_scale(xx+64,yy+yy_h*0.7,"화면 리로드",64,-1,global.sync_setting_alpha,c_white,0,-1,normal_font,fontsize2*global.font_ratio_resolution_xx,fontsize2,0)
draw_text_k_scale(xx+64,yy+yy_h*0.73,"(화면이 끊긴다면 사용해보세요)",64,-1,global.sync_setting_alpha,c_white,0,-1,light_font,fontsize3*global.font_ratio_resolution_xx,fontsize3,0)

var fullscreen_now = (window_get_fullscreen()) ? " (fullscreen)" : "";
draw_text_k_scale(xx+64,yy+yy_h*0.85,"해상도  ["+string(window_get_width())+"x"+string(window_get_height())+"]"+string(fullscreen_now),64,-1,global.sync_setting_alpha,c_white,0,-1,normal_font,fontsize2*global.font_ratio_resolution_xx,fontsize2,0)
draw_text_k_scale(xx+64,yy+yy_h*0.88,"(화면 리로드시에도, 화면이 끊긴다면 해상도를 낮춰보세요)",64,-1,global.sync_setting_alpha,c_white,0,-1,light_font,fontsize3*global.font_ratio_resolution_xx,fontsize3,0)

draw_text_k_scale(xx+xx_w*0.5,yy+yy_h*0.1,"마스터 볼륨",64,-1,global.sync_setting_alpha,c_white,0,0,normal_font,fontsize2*global.font_ratio_resolution_xx,fontsize2,0)
draw_text_k_scale(xx+xx_w*0.5,yy+yy_h*0.2,"효과음 볼륨",64,-1,global.sync_setting_alpha,c_white,0,0,normal_font,fontsize2*global.font_ratio_resolution_xx,fontsize2,0)
draw_text_k_scale(xx+xx_w*0.5,yy+yy_h*0.3,"음악 볼륨",64,-1,global.sync_setting_alpha,c_white,0,0,normal_font,fontsize2*global.font_ratio_resolution_xx,fontsize2,0)

draw_text_k_scale(xx+xx_w-64,yy+yy_h*0.85,"사용자 지정 오프셋",64,-1,global.sync_setting_alpha,c_white,0,1,normal_font,fontsize2*global.font_ratio_resolution_xx,fontsize2,0)
draw_text_k_scale(xx+xx_w-64,yy+yy_h*0.88,"(음악 싱크가 맞지 않는다면 사용해보세요)",64,-1,global.sync_setting_alpha,c_white,0,1,light_font,fontsize3*global.font_ratio_resolution_xx,fontsize3,0)
}