/// @description Insert description here
// You can write your code in this editor
draw_self()
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,c_white,w_alpha)

if (global.timeline_stop == 1 && my_id == 0)
{
	draw_set_color(image_blend);
	draw_set_alpha(0.4);
	draw_line_width(x,y,x+lengthdir_x(320,direction),y+lengthdir_y(320,direction),3);
}