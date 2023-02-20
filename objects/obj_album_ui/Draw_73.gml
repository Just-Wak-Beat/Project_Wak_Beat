/// @description Insert description here
// You can write your code in this editor
var ui_alpha__cal = global.ui_alpha
if ui_alpha__cal > 1
{
ui_alpha__cal = 1
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
var __xx = global.c_w-640*1.4
var key_Lpressed = keyboard_check(vk_left)
var key_Rpressed = keyboard_check(vk_right)
draw_sprite_ext(spr_list_name,0,__xx,global.c_y-(1 - ui_alpha__cal)*1880,1,1,0,c_white,ui_alpha__cal)
draw_sprite_ext(spr_key,key_Lpressed,__xx-500,global.c_y+64-(1 - ui_alpha__cal)*1880,2,2,0,c_white,ui_alpha__cal)
draw_sprite_ext(spr_key,key_Rpressed,__xx+500,global.c_y+64-(1 - ui_alpha__cal)*1880,-2,2,0,c_white,ui_alpha__cal)

if global.n_map_list = 0
{
draw_sprite_ext(spr_music,0,__xx-75,global.c_y+64-(1 - ui_alpha__cal)*1880,0.2,0.2,-15,#171628,ui_alpha__cal)
draw_text_k_scale(__xx+25,global.c_y+52-(1 - ui_alpha__cal)*1880,"모든 곡",64,-1,ui_alpha__cal,#171628,0,0,normal_font,0.65,0.65,0)
}
else
{
draw_sprite_ext(spr_heart,0,__xx-125,global.c_y+72-(1 - ui_alpha__cal)*1880,0.1,0.1,0,#171628,ui_alpha__cal)
draw_text_k_scale(__xx+25,global.c_y+52-(1 - ui_alpha__cal)*1880,"좋아요 한 곡",64,-1,ui_alpha__cal,#171628,0,0,normal_font,0.65,0.65,0)
}


draw_text_k_scale(global.c_x+32-(1 - ui_alpha__cal)*1880,global.c_y+10,"Artifacts",64,-1,ui_alpha__cal,#171628,0,-1,normal_font,0.5,0.5,0)
for(var i = 0; i <= 7; i++)
{
draw_sprite_ext(spr_W,i,global.c_x+64+150*i-(1 - ui_alpha__cal)*1880,global.c_y+95,0.15,0.15,20,#5a5257,ui_alpha__cal)
draw_text_k_scale(global.c_x+96+150*i-(1 - ui_alpha__cal)*1880,global.c_y+90,"x"+string(global.artifact_owned[i]),64,-1,ui_alpha__cal,#5a5257,0,-1,normal_font,0.5,0.5,0)
}


///////////////////////////////////////////////////////////////////////////////////
var __brighting_col = global.map_color
draw_self()

if instance_exists(code) && global.artifact_owned[global.requirement_type[code.n_stage]] < global.requirement_number[code.n_stage]
{
__brighting_col = #68646f
draw_sprite_ext(sprite_index,1,x,y,image_xscale,image_yscale,image_angle,__brighting_col,0.5*image_alpha)
draw_sprite_ext(spr_lock,0,x,y,image_xscale*0.7,image_yscale*0.7,image_angle,c_white,image_alpha)
}


for(var i = -10; i <= 10; i += 0.5)
{
draw_sprite_ext(sprite_index,0,x,y+i,image_xscale,image_yscale,image_angle,merge_color(__brighting_col,c_white,w_alpha),ui_alpha__cal*0.01)
draw_sprite_ext(sprite_index,0,x+i,y,image_xscale,image_yscale,image_angle,merge_color(__brighting_col,c_white,w_alpha),ui_alpha__cal*0.01)
}





var yy = camera_get_view_y(view_camera[0])
var yy_h = camera_get_view_height(view_camera[0])

var dis__ = (1 - abs(y - (yy+yy_h*0.5))/256)
if dis__ < 0
{
dis__ = 0
}


draw_sprite_ext(spr_square,0,x,yy+yy_h*0.5+512,dis__*0.5,dis__*0.5,image_angle+45,c_white,image_alpha)

if instance_exists(code) && code.gamestart = 0
{
draw_text_k_scale(x-128,yy+yy_h*0.5+620,"Rank",64,-1,dis__,c_white,0,0,light_font,0.55,0.55,0)
draw_text_k_scale(x-128,yy+yy_h*0.5+680,string(global.n_rank[code.n_stage]),64,-1,dis__,c_white,0,0,normal_font,0.65,0.65,0)

draw_text_k_scale(x+128,yy+yy_h*0.5+620,"아티펙트 수집",64,-1,dis__,c_white,0,0,light_font,0.52,0.52,0)
draw_text_k_scale(x+128,yy+yy_h*0.5+680,string(global.n_artifact[code.n_stage]),64,-1,dis__,c_white,0,0,normal_font,0.65,0.65,0)
}