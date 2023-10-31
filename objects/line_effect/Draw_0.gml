/// @description Insert description here
// You can write your code in this editor




if (instance_exists(t_ins))
{
	draw_set_alpha(1);
	draw_set_color(merge_color(image_blend,c_white,fix_num(image_xscale)));
	draw_line_width(x,y,t_ins.x,t_ins.y,image_xscale*24);
}	
