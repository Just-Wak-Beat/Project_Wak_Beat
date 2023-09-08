/// @description Insert description here
// You can write your code in this editor
image_angle = irandom_range(0,359);
image_alpha = 0
var _ef = instance_create_depth(x,y,depth+1,explosion_effect)
_ef.image_xscale = 1
_ef.image_yscale = 1
_ef.t_scale = 2
_ef.image_blend = c_white

timer = 0
view_shake(2,5,2,0)

if (place_meeting(x,y,obj_stage_clear))
{
	var random_val = irandom_range(0,100);
	if (random_val <= 36)
	{
		var effect_ = instance_create_depth(x,y,depth+1,movement_effect)
		effect_.sprite_index = spr_W;
		effect_.image_xscale = 1;
		effect_.image_yscale = 1;
		effect_.image_angle = obj_stage_clear.image_angle;
		effect_.direction = irandom_range(0,359);
		effect_.speed = 16;
		effect_.image_blend = c_white;
	}
}