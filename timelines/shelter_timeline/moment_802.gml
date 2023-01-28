heart_hitbox.w_alpha = 1
heart_hitbox.image_xscale *= 0.8
heart_hitbox.image_yscale *= 0.8


var attack_ef = instance_create_depth(heart_hitbox.x,heart_hitbox.y,heart_hitbox.depth+1,hitbox_2)
attack_ef.direction = irandom_range(0,359)
attack_ef.speed = -24
attack_ef.keep_spin_angle = 2
attack_ef.image_xscale = 0.4
attack_ef.image_yscale = 0.4
attack_ef.w_alpha = 10


var attack_ef = instance_create_depth(heart_hitbox.x,heart_hitbox.y,heart_hitbox.depth+1,hitbox_2)
attack_ef.direction = irandom_range(0,359)
attack_ef.speed = 24
attack_ef.keep_spin_angle = -2
attack_ef.image_xscale = 0.4
attack_ef.image_yscale = 0.4
attack_ef.w_alpha = 10