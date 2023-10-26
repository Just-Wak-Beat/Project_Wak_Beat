/// @description Insert description here
// You can write your code in this editor
if (global.timeline_stop == 1)
{
	alarm[1] = 1;
}
else
{
	if (sprite_index != spr_circle_half && sprite_index != spr_triangle_half && sprite_index != spr_rain)
	{
		if (sprite_index == spr_circle_spike)
		{
			var effect_ = instance_create_depth(x,y,obj_player.depth-15,movement_effect)
			effect_.image_xscale = image_xscale*0.5
			effect_.image_yscale = image_yscale*0.5
			effect_.direction = direction
			effect_.speed = 24
			effect_.image_blend = global.map_color
			effect_.sprite_index = spr_circle
			effect_.image_alpha = 1
		}
		else
		{
			var effect_ = instance_create_depth(x,y,obj_player.depth-15,movement_effect)
			effect_.image_xscale = 5/(1024/sprite_width)
			effect_.image_yscale = 5/(1024/sprite_width)
			effect_.direction = direction
			effect_.speed = 24
			effect_.image_blend = global.map_color
			effect_.sprite_index = spr_circle
			effect_.image_alpha = 1
		}
	}
}