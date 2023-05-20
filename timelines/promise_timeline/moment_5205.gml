instance_destroy(hitbox_3)
global.w_alpha = 1
global.t_map_speed_y = 0
global.promise_effect = 0



var attack_ef = instance_create_depth(room_width*0.5,global.c_y-520,depth+1,hitbox_10)
attack_ef.gravity = 5
attack_ef.gravity_direction = 270
attack_ef.image_xscale = 2
attack_ef.image_yscale = 2
attack_ef.sprite_index = spr_star
attack_ef.w_alpha = 10
attack_ef.keep_spin_angle = irandom_range(10,5)/30
