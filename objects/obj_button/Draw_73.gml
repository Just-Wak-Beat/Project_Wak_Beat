/// @description Insert description here
// You can write your code in this editor


if (can_draw == 1)
{
	var yy = camera_get_view_y(view_camera[0])
	var yy_h = camera_get_view_height(view_camera[0])
	var xx = camera_get_view_x(view_camera[0])
	var xx_w = camera_get_view_width(view_camera[0])
	
	//세밀한 값 조정 (스크롤) 배경 그리기
	if (tiny_value_scrolling > 0)
	{
		draw_set_color(c_black);
		draw_set_alpha(tiny_value_scrolling*0.8);
		draw_line_width(0,0,room_width,room_height,9999);
		draw_text_kl_scale(xx+xx_w*0.5,yy+yy_h*0.1,"세밀하게 값 조정하기",128,-1,tiny_value_scrolling*1.1,c_white,-1,0,normal_font,0.7,0.7,0);
	}
	
	
	
	
	
	if (obj_player.image_xscale > 0)
	{
		if (button_id == 2)
		{
			x = xx+520;
			y = yy+yy_h*0.75;
		}
		else if (button_id == 3)
		{
			x = xx+520;
			y = yy+yy_h*0.85;
		}
		else if (button_id == 4)
		{
			x = xx+520;
			y = yy+yy_h*0.95;
		}
		else if (button_id == 5)
		{
			x = xx+xx_w-520;
			y = yy+yy_h*0.95;
		}
		else if (button_id == 6)
		{
			x = xx+100;
			y = yy+yy_h*0.053;
		}
		else if (button_id == 7 && instance_exists(map_edior_ui))
		{
			x = xx+xx_w*0.5;
			y = yy+yy_h*0.06+(map_edior_ui.scroll_y);
			image_xscale = 0.4;
			image_yscale = 0.2;
			if (global.tiny_value_scrolling_now > 0)
			{
				image_alpha = fix_to_zero(1 - global.tiny_value_scrolling_now);
			}
		}
		else if (button_id >= 100 && instance_exists(map_edior_ui))
		{
			if (sprite_index == spr_spuare_outline_full_mask)
			{
				x = xx+xx_w*0.93+80-(map_edior_ui.scroll_y)*2.25;
				y = yy+420+(button_id-100)*120;
				image_xscale = 1;
				image_yscale = 1;
			}
			else
			{
				var tmp_val = fix_to_zero(tiny_value_scrolling);
				x = xx+(770*4-(map_edior_ui.scroll_y)*2.25)*(1-tmp_val) + tmp_val*xx_w*0.5;
				y = yy+390+(button_id-100)*120;
				image_xscale = 0.1+fix_to_zero(tiny_value_scrolling)*0.5;
				image_yscale = 0.1;
			}
		}
	
	
		if (button_id != 7 && button_id < 100)
		{
			if (sprite_index != spr_circle)
			{
				image_xscale = global.converted_view_ratio*0.17
				image_yscale = global.converted_view_ratio*0.17
			}
			else if (sprite_index == spr_square)
			{
				image_xscale = global.converted_view_ratio*0.05
				image_yscale = global.converted_view_ratio*0.05
			}
			else if (sprite_index == spr_spuare_outline)
			{
				image_xscale = global.converted_view_ratio
				image_yscale = global.converted_view_ratio
			}
			else
			{
				image_xscale += (0.2 - image_xscale)*0.1
				image_yscale += (0.2 - image_yscale)*0.1
			}
		}
	}






	if ((obj_player.image_xscale > 0 && button_id == 7) || (button_id != 7))
	{
		if (sprite_index == spr_circle)
		{
			draw_sprite_ext(spr_circle_outline,0,x,y,image_xscale*global.font_ratio_resolution_xx,image_yscale,0,c_white,image_alpha)
			draw_sprite_ext(spr_circle,0,x,y,image_xscale*0.35*global.font_ratio_resolution_xx*0.5,image_yscale*0.35*0.5,0,global.player_color,image_alpha)
		}
		else if (sprite_index == spr_square)
		{
			draw_sprite_ext(spr_square,0,x,y,image_xscale*80*global.font_ratio_resolution_xx,image_yscale,0,c_white,image_alpha)
			if (global.timeline_stop == 1 && button_id == 7 && instance_exists(map_edior_ui))
			{
				var tmp_width_full = 64*image_xscale*80*global.font_ratio_resolution_xx;
				for(var i = 0; i <= 5; i++)
				{
					if (global.savepoint_position[i] != -4)
					{
						var _xx_ = x+tmp_width_full*(-0.5+global.savepoint_position[i]/global.music_duration)
						draw_sprite_ext(spr_square,0,_xx_,y,0.1,image_yscale*4,0,global.player_color,2*image_alpha)
					}
				}
				
				for(var i = 0; i <= global.music_duration; i++)
				{
					if (global.c_map_param[i] != "")
					{
						var _xx_ = x+tmp_width_full*(-0.5+i/global.music_duration)
						draw_sprite_ext(spr_square,0,_xx_,y,0.05,image_yscale*4,0,global.map_color,2*image_alpha)
					}
				}
			}
			
			draw_sprite_ext(spr_square,0,x+image_xscale*64*((scroll_value/100)*80-40)*global.font_ratio_resolution_xx,y,0.2*1.6,image_yscale*5,0,(button_id != 7 && button_id < 100) ? global.player_color : global.map_color,image_alpha)
		}
		else if (sprite_index == spr_triangle)
		{
			draw_sprite_ext(spr_square_half,0,x-20,y,image_xscale*global.font_ratio_resolution_xx,image_yscale,-135,c_white,image_alpha)
			draw_sprite_ext(spr_square_half,0,x+20,y,image_xscale*global.font_ratio_resolution_xx,image_yscale,-135,c_white,image_alpha)
		}
		else if (sprite_index == spr_spuare_outline_full_mask)
		{
			draw_sprite_ext(spr_spuare_outline_full_mask,0,x,y,image_xscale*global.font_ratio_resolution_xx,image_yscale,0,c_white,image_alpha)
			if (scroll_value == 1)
			{
				draw_sprite_ext(spr_square,0,x,y,image_xscale*global.font_ratio_resolution_xx*0.6,image_yscale*0.6,0,c_white,image_alpha)
			}
		}
	}
}

//if global.n_setting_button = button_id
//{
//draw_text(mouse_x,mouse_y,image_alpha)
//}