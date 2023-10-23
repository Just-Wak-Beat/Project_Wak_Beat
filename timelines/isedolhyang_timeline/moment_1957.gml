set_hitbox_color(#a8c1ee,1,room_width*0.5,room_height*0.5);




create_laser(global.c_x+256,global.c_y,1,600,10,20,11,180)
create_laser(global.c_w-256,global.c_y,1,600,10,20,11,180)


var attack_ef = instance_create_depth(global.c_w,irandom_range(global.c_y,global.c_h),depth+1,hitbox_2)
attack_ef.direction = 180
attack_ef.speed = 20
attack_ef.keep_spin_angle = 2
attack_ef.image_xscale = 0.4
attack_ef.image_yscale = 0.4
attack_ef.w_alpha = 10

