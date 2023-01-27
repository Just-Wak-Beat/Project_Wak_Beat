
var attack_ef = instance_create_depth(global.c_w,irandom_range(global.c_y,global.c_h),depth+1,hitbox_2)
attack_ef.direction = 180
attack_ef.speed = 24
attack_ef.keep_spin_angle = 2
attack_ef.image_xscale = 0.4
attack_ef.image_yscale = 0.4
attack_ef.w_alpha = 10

for(var i = 0; i <= 6; i++)
{
create_laser(global.c_w,room_height*0.5+32+i*64,60+i*5,26,1,2,1,90)
create_laser(global.c_w,room_height*0.5-32-i*64,60+i*5,26,1,2,1,90)
}

