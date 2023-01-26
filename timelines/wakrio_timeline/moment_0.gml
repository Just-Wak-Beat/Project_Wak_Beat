global.savepoint_position[0] = 2490
global.savepoint_color[0] = $FF331110
global.savepoint_position[1] = 5320
global.savepoint_color[1] = $FF330E22

create_laser(irandom_range(global.c_x,global.c_w),global.c_y,60,26,10,2,2,180)
var attack_ef = instance_create_depth(global.c_w,irandom_range(global.c_y+32,global.c_h-32),depth+1,hitbox_2)
attack_ef.direction = 180
attack_ef.speed = 24
attack_ef.keep_spin_angle = 2
attack_ef.image_xscale = 0.4
attack_ef.image_yscale = 0.4
attack_ef.w_alpha = 10
