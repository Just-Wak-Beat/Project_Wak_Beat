/// @description Insert description here
// You can write your code in this editor

draw_self()
if (w_alpha > 0)
{
	draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,c_white,w_alpha)
}


if (sprite_index == spr_circle_spike)
{
	if (instance_number(hitbox_8) != 1)
	{
		draw_sprite_ext(sprite_index,image_index,x,y,image_xscale*0.9,image_yscale*0.9,image_angle,global.background_color,image_alpha)
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

