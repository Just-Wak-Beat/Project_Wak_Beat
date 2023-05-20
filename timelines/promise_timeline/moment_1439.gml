var attack_ef = instance_create_depth(irandom_range(global.c_x,global.c_w),global.c_y,depth+1,hitbox_10)
attack_ef.gravity = 0.5
attack_ef.image_xscale = 0.1
attack_ef.image_yscale = 0.1
attack_ef.sprite_index = spr_circle
attack_ef.w_alpha = 10
attack_ef.keep_spin_angle = 0