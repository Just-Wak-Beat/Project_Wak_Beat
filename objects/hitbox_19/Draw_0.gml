/// @description Insert description here
// You can write your code in this editor



draw_self()
if w_alpha > 0
{
	draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,c_white,w_alpha)
}


//eyes
var scale_xscale = (image_xscale/1.4)*(1+w_alpha*0.5);
var scale_yscale = (image_yscale/1.4)*(1+w_alpha*0.5);
draw_sprite_ext(spr_eye1,0,x,y,scale_xscale,scale_yscale,image_angle,c_white,image_alpha)
draw_sprite_ext(spr_eye1,1,x,y,scale_xscale,scale_yscale,image_angle,image_blend,image_alpha)