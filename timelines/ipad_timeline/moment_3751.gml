global.ipad_effect = 0
global.w_alpha = 1
global.map_color = #5595ff
global.background_color = #5595ff
global.t_bg_color = 0


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
