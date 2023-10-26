/// @description Insert description here
// You can write your code in this editor




draw_self()
if w_alpha > 0
{
	draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,c_white,w_alpha)
}

if (global.timeline_stop == 1)
{
	draw_sprite_ext(sprite_index,image_index,x,y,t_scale,t_scale,image_angle,image_blend,0.4);
}



