global.w_alpha = 1
yonsei_hitbox.w_alpha = 1
yonsei_hitbox.image_xscale = 0.95
yonsei_hitbox.image_yscale = 0.95

korea_univ_hitbox.w_alpha = 1
korea_univ_hitbox.image_xscale = 0.95
korea_univ_hitbox.image_yscale = 0.95

for(var i = 0; i < 360; i += 15)
{
var attack_ef = instance_create_depth(yonsei_hitbox.x,yonsei_hitbox.y,depth-100,hitbox_6)
attack_ef.direction = i
attack_ef.speed = 32
attack_ef.keep_spin_angle = 2
attack_ef.image_xscale = 0.05
attack_ef.image_yscale = 0.05
attack_ef.w_alpha = 10
}

for(var i = 0; i < 360; i += 15)
{
var attack_ef = instance_create_depth(korea_univ_hitbox.x,korea_univ_hitbox.y,depth-100,hitbox_6)
attack_ef.direction = i
attack_ef.speed = 32
attack_ef.keep_spin_angle = 2
attack_ef.image_xscale = 0.05
attack_ef.image_yscale = 0.05
attack_ef.w_alpha = 10
}
