var random_xx = global.ipad_random_xx
var attack_ef = instance_create_depth(random_xx,global.c_h-16,depth+1,hitbox_10)
attack_ef.gravity = 1
var speed__y = global.ipad_random_yspeed
attack_ef.vspeed = speed__y
var speed__ = global.ipad_random_xspeed
attack_ef.hspeed = speed__
attack_ef.keep_spin_angle = speed__/2
attack_ef.image_xscale = 0.35
attack_ef.image_yscale = 0.35
attack_ef.w_alpha = 10
attack_ef.sprite_index = spr_circle_spike

global.ipad_random_xx = irandom_range(global.c_x+1280,global.c_w)
global.ipad_random_xspeed = irandom_range(-15,15)
global.ipad_random_yspeed = irandom_range(-48,-64)
for(var i = 0; i <= 10; i++)
{
create_explo_circle(global.ipad_random_xx+i*global.ipad_random_xspeed*1.5,global.c_h-128+global.ipad_random_yspeed*i*1.5,89+i*3,10,1,0,0.7/(i*0.3+1),0,0,0)
}
global.w_alpha = 0.13