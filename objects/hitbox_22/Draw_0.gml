/// @description Insert description here
// You can write your code in this editor



draw_self();
if (global.timeline_stop != 1)
{
	if (play_animation == 0)
	{
		draw_text_k_scale(x,y-96*global.converted_view_ratio,"여기로\n달리세요!",64,-1,image_alpha*0.4,image_blend,0,0,normal_font,global.font_ratio_resolution_xx*global.converted_view_ratio,global.converted_view_ratio,0)
	}
	var tmp = (image_xscale+scale)*256;
	draw_set_color(image_blend);
	draw_set_alpha(line_alpha);
	draw_rectangle_rotated_width(x,y,-tmp,-tmp,tmp,tmp,image_angle-45+line_angle,line_width)
	if (w_alpha > 0)
	{
		draw_set_alpha(w_alpha);
		draw_set_color(c_white);
		draw_rectangle_rotated_width(x,y,-tmp,-tmp,tmp,tmp,image_angle-45+line_angle,line_width)
	}
}