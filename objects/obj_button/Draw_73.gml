/// @description Insert description here
// You can write your code in this editor


if (can_draw == 1)
{
	if (global.n_progress > 0)
	{
		var yy = camera_get_view_y(view_camera[0])
		var yy_h = camera_get_view_height(view_camera[0])
		var xx = camera_get_view_x(view_camera[0])
		var xx_w = camera_get_view_width(view_camera[0])
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
	
		if sprite_index != spr_circle
		{
			image_xscale = global.converted_view_ratio*0.17
			image_yscale = global.converted_view_ratio*0.17
		}
		else if sprite_index == spr_square
		{
			image_xscale = global.converted_view_ratio*0.05
			image_yscale = global.converted_view_ratio*0.05
		}
		else
		{
			image_xscale += (0.2 - image_xscale)*0.1
			image_yscale += (0.2 - image_yscale)*0.1
		}
	}







	if sprite_index = spr_circle
	{
		draw_sprite_ext(spr_circle_outline,0,x,y,image_xscale*global.font_ratio_resolution_xx,image_yscale,0,c_white,image_alpha)
		draw_sprite_ext(spr_circle,0,x,y,image_xscale*0.35*global.font_ratio_resolution_xx*0.5,image_yscale*0.35*0.5,0,global.player_color,image_alpha)
	}

	if sprite_index = spr_square
	{
		draw_sprite_ext(spr_square,0,x,y,image_xscale*80*global.font_ratio_resolution_xx,image_yscale,0,c_white,image_alpha)
		draw_sprite_ext(spr_square,0,x+image_xscale*64*((scroll_value/100)*80-40)*global.font_ratio_resolution_xx,y,0.2*1.6,image_yscale*5,0,global.player_color,image_alpha)
	}
	
	if sprite_index = spr_triangle
	{
		draw_sprite_ext(spr_triangle_empty_bold,0,x,y,image_xscale*global.font_ratio_resolution_xx,image_yscale,-90,c_white,image_alpha)
		draw_sprite_ext(spr_music,0,x,y,image_xscale*global.font_ratio_resolution_xx*0.7,image_yscale*0.7,-20,c_white,image_alpha)
	}
}

//if global.n_setting_button = button_id
//{
//draw_text(mouse_x,mouse_y,image_alpha)
//}