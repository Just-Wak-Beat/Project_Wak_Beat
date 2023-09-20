/// @description Insert description here
// You can write your code in this editor




draw_self()
if draw_eye > 0
{
	draw_sprite_ext(spr_cross_eye,2,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha)
}

if w_alpha > 0
{
	draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,c_white,w_alpha)
}



if (sprite_index == spr_spuare_outline && audio_is_playing(roki))
{
	var scale_xscale = (image_xscale/4)*(1+w_alpha*0.5);
	var scale_yscale = (image_yscale/4)*(1+w_alpha*0.5);
	draw_sprite_ext(spr_eye1,0,x,y,scale_xscale,scale_yscale,image_angle,c_white,image_alpha)
	draw_sprite_ext(spr_eye1,1,x,y,scale_xscale,scale_yscale,image_angle,image_blend,image_alpha)
	
	//뿔
	var scale_xscale2 = (image_xscale/48)*(1+w_alpha*0.1);
	var scale_yscale2 = (image_yscale/48)*(1+w_alpha*0.1);
	var tmp_w_alpha = (w_alpha > 1) ? 1 : w_alpha;
	draw_sprite_ext(spr_triangle,0,x-image_xscale*32,y-image_yscale*40,scale_xscale2,scale_yscale2,35,merge_color(image_blend,c_white,tmp_w_alpha),image_alpha)
	draw_sprite_ext(spr_triangle,1,x+image_xscale*32,y-image_yscale*40,scale_xscale2,scale_yscale2,-35,merge_color(image_blend,c_white,tmp_w_alpha),image_alpha)
}