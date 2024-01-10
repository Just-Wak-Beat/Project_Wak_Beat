/// @description Insert description here
// You can write your code in this editor



draw_self();
if (global.timeline_stop == 1)
{
	var tmp_angle = image_angle;
	draw_set_color(c_white);
	draw_set_alpha(0.2);
	draw_line_width(x,y,x+lengthdir_x(256,tmp_angle),y+lengthdir_y(256,tmp_angle),1.5);
	
	draw_set_alpha(0.7);
	draw_line_width(x,y,x+lengthdir_x(160,tmp_angle-m_data_arg3/2),y+lengthdir_y(160,tmp_angle-m_data_arg3/2),3);
	draw_line_width(x,y,x+lengthdir_x(160,tmp_angle+m_data_arg3/2),y+lengthdir_y(160,tmp_angle+m_data_arg3/2),3);
}