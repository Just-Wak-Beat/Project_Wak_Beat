for(var i = 0; i < 360; i += 15)
{
var attack_ef = instance_create_depth(yonsei_hitbox.x,yonsei_hitbox.y,depth-100,hitbox_6)
attack_ef.direction = i
attack_ef.speed = 32
attack_ef.keep_spin_angle = 2
attack_ef.image_xscale = 0.2
attack_ef.image_yscale = 0.2
attack_ef.w_alpha = 10
}


yonsei_hitbox.t_scale = 0
spotlight1.t_scale = 0
spotlight2.t_scale = 0

global.w_alpha = 1
global.alzar_effect = 0
global.alzar_effect2 = 0