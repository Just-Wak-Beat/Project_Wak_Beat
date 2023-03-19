/// @description Insert description here
// You can write your code in this editor
draw_set_alpha(image_alpha)
draw_line_width_color(x,y-image_yscale*500,x,y+image_yscale*200,image_yscale*4,c_black,image_blend)
draw_self()


if global.low_graphics = false
{
	for(var i = 0.01; i <= 1.5; i += 0.01)
	{
	var color__ = merge_color(light_color,c_white,(1-abs(i)/1.5))
	draw_sprite_ext(sprite_index,1,x,y,image_xscale*i,image_yscale*i,image_angle,color__,0.01*image_alpha)
	}
}
draw_sprite_ext(sprite_index,1,x,y,image_xscale,image_yscale,image_angle,c_white,image_alpha)


draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,c_white,w_alpha)
draw_sprite_ext(sprite_index,1,x,y,image_xscale,image_yscale,image_angle,c_white,w_alpha)