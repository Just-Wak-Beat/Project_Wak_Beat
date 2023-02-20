wakgood_shouting.w_alpha = 1
wakgood_shouting.image_index = 1
wakgood_shouting.image_xscale = 2
wakgood_shouting.image_yscale = 2
global.w_alpha = 1
global.quake_effect = 1




var attack_ef = instance_create_depth(wakgood_shouting.x,wakgood_shouting.y,depth+1,hitbox_2)
attack_ef.direction = global.yoong_laser_dir
attack_ef.speed = 32
attack_ef.keep_spin_angle = 2
attack_ef.image_xscale = 1
attack_ef.image_yscale = 1
attack_ef.w_alpha = 10
attack_ef.sprite_index = spr_circle_half
attack_ef.image_angle = global.yoong_laser_dir+180