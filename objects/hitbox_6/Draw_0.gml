/// @description Insert description here
// You can write your code in this editor


if (circle_w_alpha > 0 && sprite_index != spr_rain)
{
	draw_sprite_ext(spr_circle,image_index,x,y,(image_xscale*circle_ef_xscale),(image_yscale*circle_ef_xscale),image_angle,merge_color_new(image_blend,(get_dis_color(global.background_color,c_white) < 7) ? c_black : c_white,fix_num(circle_w_alpha)),1)
}

draw_self()
if w_alpha > 0
{
	draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,(get_dis_color(global.background_color,c_white) < 7) ? c_black : c_white,w_alpha)
}
