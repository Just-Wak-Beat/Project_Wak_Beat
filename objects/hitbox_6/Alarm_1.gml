/// @description Insert description here
// You can write your code in this editor
image_xscale *= 0.5
image_yscale *= 0.5
if sprite_index != spr_circle_half
{
	var random_x = irandom_range(-24,24)
	var random_y = irandom_range(-24,24)
	var effect_ = instance_create_depth(x+random_x,y+random_y,player.depth-15,movement_effect)
	effect_.image_xscale = 5/(1024/sprite_width)
	effect_.image_yscale = 5/(1024/sprite_width)
	effect_.direction = direction
	effect_.speed = 24
	effect_.image_blend = global.map_color
	effect_.sprite_index = spr_circle
	effect_.image_alpha = 2
}