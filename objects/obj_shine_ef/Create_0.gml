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
	if (random_val <= 58)
	{
		repeat(irandom_range(1,3))
		{
			var tmp_size = 5/irandom_range(5,8)
			var effect_ = instance_create_depth(x,y,obj_stage_clear.depth+1,movement_effect)
			effect_.sprite_index = spr_W;
			effect_.image_xscale = tmp_size;
			effect_.image_yscale = tmp_size;
			effect_.image_angle = irandom_range(0,359);
			effect_.direction = irandom_range(0,359);
			effect_.speed = 16;
			effect_.image_blend = c_white;
			effect_.alarm[2] = 1
		}
	}
}