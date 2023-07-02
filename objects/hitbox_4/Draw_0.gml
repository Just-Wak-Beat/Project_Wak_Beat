/// @description Insert description here
// You can write your code in this editor



var col = global.map_color
if col = c_black && image_alpha < 1
{
	col = c_white
}
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale*scale_up_effect,image_yscale*scale_up_effect,image_angle,col,image_alpha)
if w_alpha > 0
{
	draw_sprite_ext(sprite_index,image_index,x,y,image_xscale*scale_up_effect,image_yscale*scale_up_effect,image_angle,c_white,w_alpha*image_alpha)
}