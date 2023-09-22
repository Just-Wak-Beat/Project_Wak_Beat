/// @description Insert description here
// You can write your code in this editor

var color_table = [ #ff008c,#f0a957,#95c100,#5c89ce,#443965,#8a2be2 ];


//한 각당 20deg
if (rainbow_ef_alpha > 0)
{
	draw_set_alpha(rainbow_ef_alpha)
	var tmp_dis = obj_camera.v_x*rainbow_ef_alpha;
	for(var i = 0; i < 18; i ++)
	{
		var tmp_index = i-floor(i/6)*6
		var target_angle = rainbow_ef_angle+i*20;
		draw_set_color(color_table[tmp_index]);
		draw_triangle(x,y,x+lengthdir_x(tmp_dis,target_angle+10),y+lengthdir_y(tmp_dis,target_angle+10),x+lengthdir_x(tmp_dis,target_angle-10),y+lengthdir_y(tmp_dis,target_angle-10),false)
	}
}

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




if (char_ef_alpha > 0)
{
	var tmp_xx = camera_get_view_x(view_camera[0]);
	var tmp_yy = camera_get_view_y(view_camera[0]);

	var tmp_xx_w = camera_get_view_width(view_camera[0]);
	var tmp_yy_h = camera_get_view_height(view_camera[0]);
	var font_size = 1;
	var img_index = unlocked_char_index;
	draw_set_alpha(char_ef_alpha)
	draw_set_color(merge_color(color_sec,c_white,0.1))
	draw_line_width(tmp_xx+tmp_xx_w-char_ef_alpha*global.converted_view_ratio*780*font_size,tmp_yy-global.converted_view_ratio*128,tmp_xx+tmp_xx_w-char_ef_alpha*global.converted_view_ratio*320*font_size,tmp_yy+char_ef_alpha*tmp_xx_w*font_size,global.converted_view_ratio*600*font_size)
	


	shader_set(shFlash);
	draw_sprite_ext(spr_illustrationCG,img_index,tmp_xx+tmp_xx_w-char_ef_alpha*(3-char_ef_alpha*2)*global.converted_view_ratio*430*font_size,tmp_yy+tmp_yy_h,global.converted_view_ratio*font_size*2*global.font_ratio_resolution_xx,global.converted_view_ratio*font_size*2,0,color_sec,char_ef_alpha)
	shader_reset();
		
		
	draw_sprite_ext(spr_illustrationCG,img_index,tmp_xx+tmp_xx_w-char_ef_alpha*global.converted_view_ratio*430*font_size,tmp_yy+tmp_yy_h,global.converted_view_ratio*font_size*2*global.font_ratio_resolution_xx,global.converted_view_ratio*font_size*2,0,c_white,char_ef_alpha)
	shader_set(shFlash);
	draw_sprite_ext(spr_illustrationCG,img_index,tmp_xx+tmp_xx_w-char_ef_alpha*(3-char_ef_alpha*2)*global.converted_view_ratio*430*font_size,tmp_yy+tmp_yy_h,global.converted_view_ratio*font_size*2*global.font_ratio_resolution_xx,global.converted_view_ratio*font_size*2,0,c_white,w_alpha)
	shader_reset();
}