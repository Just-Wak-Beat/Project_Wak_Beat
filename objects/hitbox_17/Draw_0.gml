/// @description Insert description here
// You can write your code in this editor

if (can_draw == 1)
{
	var _w_alpha = (w_alpha2 > 1) ? 1 : w_alpha2
	var color_ = merge_color(global.map_color,c_white,_w_alpha)

	if (sprite_index == spr_circle_cylinder && spike_anime != 0)
	{
		for(var i = 1; i < 9; i++)
		{
			draw_sprite_ext(spr_triangle_empty_bold,image_index,floor(x)+spike_anime*160*image_xscale,floor(y)+i*128*spike_anime_dir,image_xscale*0.25+w_alpha2*0.1,image_yscale*0.25+w_alpha2*0.1,-90*spike_anime,color_,image_alpha)
		}
	}

	var _w_alpha = (w_alpha > 1) ? 1 : w_alpha
	var color_ = merge_color(global.map_color,c_white,_w_alpha)
	draw_sprite_ext(sprite_index,image_index,floor(x),floor(y),image_xscale+w_alpha2*0.1,image_yscale+w_alpha2*0.1,image_angle,color_,image_alpha)
	
	if (fast_movement != true && warning_timer < target_time)
	{
		draw_sprite_ext(sprite_index,image_index,floor(xstart),floor(ystart),(target_xscale != -4) ? target_xscale : image_xscale,image_yscale,image_angle,global.map_color,0.3)
	}
}

