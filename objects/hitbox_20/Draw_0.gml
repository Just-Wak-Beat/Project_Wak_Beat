/// @description Insert description here
// You can write your code in this editor




if (global.timeline_stop == 1)
{
	var tmp_ang = image_angle;
	for(var i = -ed_arg3; i <= ed_arg3; i++)
	{
		draw_sprite_ext(sprite_index,0,x+lengthdir_x(image_xscale*160*i,image_angle),y+lengthdir_y(image_xscale*160*i,image_angle),image_xscale,image_xscale,tmp_ang,global.map_color,0.4);
	}
}