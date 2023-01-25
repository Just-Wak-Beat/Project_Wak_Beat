/// @description Insert description here
// You can write your code in this editor




draw_self()

shader_set(shFlash)
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,c_white,w_alpha)
shader_reset()

draw_set_color(c_white)
draw_set_alpha(0.2)
for(var i = 6; i < 32; i++)
{
	if i >= 20
	{
	draw_set_color(c_white)
	}
	else
	{
	draw_set_color(merge_color(image_blend,c_white,w_alpha))
	}
draw_line_width(x+xx[i],y+yy[i],x+lengthdir_x(66,spin_rad*0.5),y+lengthdir_y(66,spin_rad*0.5),4)
draw_circle_color(x+lengthdir_x(66,spin_rad*0.5),y+lengthdir_y(66,spin_rad*0.5),2.5,c_white,c_white,false)

draw_line_width(x+xx3[i],y+yy3[i],x+lengthdir_x(66,spin_rad*0.5+180),y+lengthdir_y(66,spin_rad*0.5+180),4)
draw_circle_color(x+lengthdir_x(66,spin_rad*0.5+180),y+lengthdir_y(66,spin_rad*0.5+180),2.5,c_white,c_white,false)


	if i >= 20
	{
	draw_set_color($FF4AB539)
	}
	else
	{
	draw_set_color(merge_color(image_blend,c_white,w_alpha))
	}
draw_line_width(x+xx2[i],y+yy2[i],x+lengthdir_x(82,-spin_rad),y+lengthdir_y(82,-spin_rad),1.5)
}