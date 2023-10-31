/// @description Insert description here
// You can write your code in this editor

if (image_blend != global.map_color)
{
	if (global.low_graphics == true)
	{
		image_blend = global.map_color;
	}
	else
	{
		if (instance_exists(changing_hitbox_color))
		{
			if (color_changed == 1 || (point_distance(x,y,changing_hitbox_color.x,changing_hitbox_color.y) <= (changing_hitbox_color.image_xscale*1024*global.n_camera_zoom)+(sprite_width*0.5*image_xscale)))
			{
				image_blend = merge_color(image_blend,global.map_color,0.04);
				if (color_changed == 0)
				{
					w_alpha = 2;
					color_changed = 1;
				}
			}
		}
		else
		{
			color_changed = 0;
			if (image_blend != global.map_color)
			{
				if (get_dis_color(image_blend,global.map_color) < 7)
				{
					image_blend = global.map_color;
				}
				else
				{
					image_blend = merge_color(image_blend,global.map_color,0.04);
				}
			}
		}
	}
}