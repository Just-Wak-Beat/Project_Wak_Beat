yonsei_hitbox.t_scale = 2
yonsei_hitbox.w_alpha = 1

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
