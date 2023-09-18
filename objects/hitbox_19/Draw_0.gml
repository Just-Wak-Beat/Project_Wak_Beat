/// @description Insert description here
// You can write your code in this editor



draw_self()
if w_alpha > 0
{
	draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,c_white,w_alpha)
}


//eyes
var scale_xscale = (image_xscale/1.1)*(1+w_alpha*0.5);
var scale_yscale = (image_yscale/1.1)*(1+w_alpha*0.5);
draw_sprite_ext(spr_eye1,0,x,y,scale_xscale*1.5,scale_yscale*1.5,image_angle,c_black,image_alpha)
draw_sprite_ext(spr_eye1,1,x+lengthdir_x(target_eye_dis,target_eye_angle),y+lengthdir_y(target_eye_dis,target_eye_angle),scale_xscale*1,scale_yscale*1,image_angle,image_blend,image_alpha)