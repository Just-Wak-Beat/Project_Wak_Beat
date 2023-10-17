/// @description Insert description here
// You can write your code in this editor

if (image_blend != global.map_color)
{
	if (global.mobile_mode == 1)
	{
		image_blend = global.map_color;
	}
	else
	{
		if (instance_exists(changing_hitbox_color))
		{
			if (point_distance(x,y,changing_hitbox_color.x,changing_hitbox_color.y) <= (changing_hitbox_color.image_xscale*1024*global.n_camera_zoom)+(sprite_width*0.5*image_xscale))
			{
				image_blend = merge_color(image_blend,global.map_color,0.04);
			}
		}
		else
		{
			image_blend = merge_color(image_blend,global.map_color,0.04);
		}
	}
}