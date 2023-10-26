/// @description Insert description here
// You can write your code in this editor


if (can_draw == 1)
{
	var yy = camera_get_view_y(view_camera[0])
	var yy_h = camera_get_view_height(view_camera[0])
	var xx = camera_get_view_x(view_camera[0])
	var xx_w = camera_get_view_width(view_camera[0])
	if (obj_player.image_xscale > 0)
	{
		if (button_id == 2)
		{
			x = xx+520
			y = yy+yy_h*0.75
		}
		else if (button_id == 3)
		{
			x = xx+520
			y = yy+yy_h*0.85
		}
		else if (button_id == 4)
		{
			x = xx+520
			y = yy+yy_h*0.95
		}
		else if (button_id == 5)
		{
			x = xx+xx_w-520
			y = yy+yy_h*0.95
		}
		else if (button_id == 6)
		{
			x = xx+100
			y = yy+yy_h*0.053;
		}
		else if (button_id == 7 && instance_exists(map_edior_ui))
		{
			x = xx+xx_w*0.5
			y = yy+yy_h*0.95-(map_edior_ui.scroll_y);
			image_xscale = 0.4
			image_yscale = 0.2
		}
		else if (button_id >= 100 && instance_exists(map_edior_ui))
		{
			if (sprite_index == spr_spuare_outline_full_mask)
			{
				x = xx+200+(button_id-100)*420
				image_xscale = 1;
				image_yscale = 1;
			}
			else
			{
				x = xx+240+(button_id-100)*420
				image_xscale = 0.06;
				image_yscale = 0.1;
			}
			y = yy+420+(map_edior_ui.scroll_y);
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