/// @description Insert description here
// You can write your code in this editor
if sprite_index != spr_circle_half && sprite_index != spr_triangle_half
{
	var effect_ = instance_create_depth(x,y,obj_player.depth-15,movement_effect)
	effect_.image_xscale = 2/(1024/sprite_width)
	effect_.image_yscale = 2/(1024/sprite_width)
	effect_.direction = direction
	effect_.speed = 24
	effect_.image_blend = global.map_color
	effect_.sprite_index = spr_circle
	effect_.image_alpha = 1
	effect_.image_alpha = 0.8;
}