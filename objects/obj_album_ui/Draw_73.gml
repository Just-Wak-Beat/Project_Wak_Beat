/// @description Insert description here
// You can write your code in this editor



draw_self()
draw_sprite_ext(sprite_index,0,x,y,image_xscale,image_yscale,image_angle,merge_color(global.map_color,c_white,w_alpha),image_alpha)


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
draw_text_k_scale(x-128,yy+yy_h*0.5+680,string(global.n_rank[global.t_select_map-2]),64,-1,dis__,c_white,0,0,normal_font,0.65,0.65,0)

draw_text_k_scale(x+128,yy+yy_h*0.5+620,"아티펙트 수집",64,-1,dis__,c_white,0,0,light_font,0.52,0.52,0)
draw_text_k_scale(x+128,yy+yy_h*0.5+680,string(global.n_artifact[global.t_select_map-2]),64,-1,dis__,c_white,0,0,normal_font,0.65,0.65,0)
}