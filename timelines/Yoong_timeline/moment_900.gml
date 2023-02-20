var random_scale = irandom_range(50,150)/150
create_explo_circle(irandom_range(global.c_x+256,global.c_w+128),irandom_range(global.c_y+128,global.c_h-128),60,60,1,0,random_scale,0,0,0)


var attack_ef = instance_create_depth(global.c_w,irandom_range(global.c_y+16,global.c_h-16),depth+1,hitbox_2)
attack_ef.direction = 180
attack_ef.speed = 24
attack_ef.keep_spin_angle = 2
attack_ef.image_xscale = 0.4
attack_ef.image_yscale = 0.4
attack_ef.w_alpha = 10


