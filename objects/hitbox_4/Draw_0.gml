/// @description Insert description here
// You can write your code in this editor



var col = global.map_color;
var tmp_spr = sprite_index;
var tmp_scale = 1;
if (image_alpha < 1)
{
	if (sprite_index == spr_circle)
	{
		image_angle --;
		tmp_spr = spr_circle_dot_outline;
		tmp_scale = 2.1;
	}
	
	if col = c_black
	{
		col = c_white;
	}
}

draw_sprite_ext(tmp_spr,image_index,x,y,image_xscale*scale_up_effect*tmp_scale,image_yscale*scale_up_effect*tmp_scale,image_angle,col,image_alpha)
if w_alpha > 0
{
	draw_sprite_ext(tmp_spr,image_index,x,y,image_xscale*scale_up_effect*tmp_scale,image_yscale*scale_up_effect*tmp_scale,image_angle,c_white,w_alpha*image_alpha)
}