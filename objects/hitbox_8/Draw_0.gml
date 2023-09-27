/// @description Insert description here
// You can write your code in this editor

draw_self()
if (w_alpha > 0)
{
	draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,c_white,w_alpha)
}


if (sprite_index == spr_circle_spike)
{
	var scale_xscale = (image_xscale/1.03)*(1+w_alpha*2);
	var scale_yscale = (image_yscale/1.03)*(1+w_alpha*2);
	if (instance_number(hitbox_8) != 1)
	{
		draw_sprite_ext(sprite_index,image_index,x,y,image_xscale*0.9,image_yscale*0.9,image_angle,merge_color(c_black,global.background_color,fix_num(global.t_bg_color_alpha)),image_alpha)
		draw_sprite_ext(spr_eye1,0,x,y,scale_xscale,scale_yscale,image_angle,image_blend,image_alpha)
		draw_sprite_ext(spr_eye1,1,x,y,scale_xscale,scale_yscale,image_angle,c_white,image_alpha)
	}
	else
	{
		draw_sprite_ext(spr_eye1,0,x,y,scale_xscale,scale_yscale,image_angle,c_white,image_alpha)
		draw_sprite_ext(spr_eye1,1,x,y,scale_xscale,scale_yscale,image_angle,image_blend,image_alpha)
	}
}


if (sprite_index == spr_pipe)
{
	draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle-45,image_blend,image_alpha)
	draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle+45,image_blend,image_alpha)
	if (w_alpha > 0)
	{
		draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle-45,c_white,w_alpha)
		draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle+45,c_white,w_alpha)
	}
}

