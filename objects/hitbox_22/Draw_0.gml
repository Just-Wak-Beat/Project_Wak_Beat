/// @description Insert description here
// You can write your code in this editor
if (play_animation == 0)
{
	draw_text_k_scale(x,y-96,"여기로\n달리세요!",64,-1,image_alpha*0.4,image_blend,0,0,normal_font,1,1,0)
}

draw_self();
var tmp = (image_xscale+scale)*256;
draw_set_color(image_blend);
draw_set_alpha(line_alpha);
draw_rectangle_rotated_width(x,y,-tmp,-tmp,tmp,tmp,line_angle,line_width)
if (w_alpha > 0)
{
	draw_set_alpha(w_alpha);
	draw_set_color(c_white);
	draw_rectangle_rotated_width(x,y,-tmp,-tmp,tmp,tmp,line_angle,line_width)
}