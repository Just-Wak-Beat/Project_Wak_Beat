/// @description Insert description here
// You can write your code in this editor


for(var i = 1; i <= 10; i += 0.8)
{
	draw_set_color(c_white);
	draw_set_alpha(1/100);
	draw_circle(x,y,effect_rad*i*image_xscale,false);
}


draw_self()

if (global.low_graphics = false)
{
	shader_set(shFlash)
	draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,c_white,w_alpha*image_alpha)
	shader_reset()


	draw_set_color(c_white)
	draw_set_alpha(0.2*image_alpha*rings_alpha)
	if (rings_alpha > 0 && image_alpha > 0)
	{
		for(var i = 6; i < 32; i++)
		{
			if (i >= 20)
			{
				draw_set_color(c_white)
			}
			else
			{
				draw_set_color(merge_color(image_blend,c_white,w_alpha))
			}
			draw_line_width(x+xx[i],y+yy[i],x+lengthdir_x(60+image_xscale*32,spin_rad*0.5),y+lengthdir_y(60+image_xscale*32,spin_rad*0.5),4)
			draw_circle_color(x+lengthdir_x(60+image_xscale*32,spin_rad*0.5),y+lengthdir_y(60+image_xscale*32,spin_rad*0.5),2.5,c_white,c_white,false)

			draw_line_width(x+xx3[i],y+yy3[i],x+lengthdir_x(60+image_xscale*32,spin_rad*0.5+180),y+lengthdir_y(60+image_xscale*32,spin_rad*0.5+180),4)
			draw_circle_color(x+lengthdir_x(60+image_xscale*32,spin_rad*0.5+180),y+lengthdir_y(60+image_xscale*32,spin_rad*0.5+180),2.5,c_white,c_white,false)


			if (i >= 20)
			{
				draw_set_color(color_sec)
			}
			else
			{
				draw_set_color(merge_color(image_blend,c_white,w_alpha))
			}
			draw_line_width(x+xx2[i],y+yy2[i],x+lengthdir_x(76+image_xscale*32,-spin_rad),y+lengthdir_y(76+image_xscale*32,-spin_rad),1.5*image_alpha)
		}
	}
}



if (touched > 3)
{
	depth = obj_camera.depth-100
	
	var xx_ = camera_get_view_x(view_camera[0])
	var yy_ = camera_get_view_y(view_camera[0])
	var xx__w = camera_get_view_width(view_camera[0])
	var yy__h = camera_get_view_height(view_camera[0])
	var font_size = global.converted_view_ratio
	var alpha_ = touched-3
	draw_set_color(c_black)
	draw_set_alpha(alpha_*0.5)
	draw_line_width(xx_-64,yy_+yy__h*0.5,xx__w+64,yy_+yy__h*0.5,9999)
	
	draw_set_color(merge_color(global.player_color,c_black,0.3))
	draw_set_alpha(alpha_*0.5)
	draw_line_width(xx_,yy_+yy__h*0.5,xx__w,yy_+yy__h*0.5,600*font_size)
}