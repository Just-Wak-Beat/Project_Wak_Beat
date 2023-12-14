/// @description Insert description here
// You can write your code in this editor

if (can_draw == 1)
{
	shader_set(shFlash)
	draw_self()
	draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,(get_dis_color(global.background_color,c_white) < 7) ? c_black : c_white,w_alpha)
	shader_reset()
}