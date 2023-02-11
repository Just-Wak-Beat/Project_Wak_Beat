var random_xx = irandom_range(global.c_x,global.c_w)
create_explo_circle(random_xx,global.c_h-16,1,10,1,0,0.35,0,0,0)

var attack_ef = instance_create_depth(random_xx,global.c_h-16,depth+1,hitbox_10)
attack_ef.gravity = 1
attack_ef.vspeed = irandom_range(-16,-32)
var speed__ = irandom_range(-5,5)
attack_ef.hspeed = speed__
attack_ef.keep_spin_angle = speed__/2
attack_ef.image_xscale = 0.35
attack_ef.image_yscale = 0.35
attack_ef.w_alpha = 10

global.ipad_random_xx = irandom_range(global.c_x,global.c_w)
global.ipad_random_xspeed = irandom_range(-15,15)
global.ipad_random_yspeed = irandom_range(-56,-64)
