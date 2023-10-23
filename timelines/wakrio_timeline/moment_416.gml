create_laser(irandom_range(global.c_x,global.c_w),global.c_y,60,26,4,2,2,180)
create_spike_circle(room_width*0.5,global.c_h,room_width*0.5,room_height*0.5,60,0,0,0.5)


var attack_ef = instance_create_depth(global.c_w,irandom_range(global.c_y+32,global.c_h-32),depth+1,hitbox_2)
attack_ef.direction = 180
attack_ef.speed = 20
attack_ef.keep_spin_angle = 2
attack_ef.image_xscale = 0.4
attack_ef.image_yscale = 0.4
attack_ef.w_alpha = 10
