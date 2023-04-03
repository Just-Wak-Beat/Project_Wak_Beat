if global.t_selected_difficulty = 1
{
global.savepoint_position[0] = 2810
global.savepoint_color[0] = #ff637a
}
global.t_bg_color = 0.3
global.t_bg_color_alpha = 0
global.background_color = #5595ff
global.artifact_type = 3
global.ipad_effect = 0
instance_destroy(hitbox_parents)

if global.low_graphics = false
{
	for(var i = 0; i <= 64; i++)
	{
	var _shaking_circle = create_explo_circle(global.c_x+i*80,global.c_h+32,1+i*2,7200,0,0,0.4,2,0,0)
	_shaking_circle.direction = 90
	}
}


for(var i = 0; i <= 64; i++)
{
var _shaking_circle = create_explo_circle(global.c_w-i*80,global.c_h,1+i*3,7200,0,0,0.4,2,0,0)
_shaking_circle.direction = 90
}




var random_xx = irandom_range(global.c_x,global.c_w)
create_explo_circle(random_xx,global.c_h-16,1,10,1,0,0.35,0,0,0)

var attack_ef = instance_create_depth(random_xx,global.c_h-16,depth+1,hitbox_10)
attack_ef.gravity = 1
attack_ef.vspeed = irandom_range(-16,-32)
var speed__ = irandom_range(-5,5)
attack_ef.hspeed = speed__
attack_ef.keep_spin_angle = speed__
attack_ef.image_xscale = 0.35
attack_ef.image_yscale = 0.35
attack_ef.w_alpha = 10