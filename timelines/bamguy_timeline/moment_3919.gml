
var attack_ef = instance_create_depth(global.c_w,irandom_range(global.c_y,global.c_h),depth+1,hitbox_2)
attack_ef.direction = 180
attack_ef.speed = 20
attack_ef.keep_spin_angle = 2
attack_ef.image_xscale = 0.4
attack_ef.image_yscale = 0.4
attack_ef.w_alpha = 10


for(var i = 0; i <= 3; i++)
{
	if i%2 = 0
	{
	create_laser(global.c_x+192-i*64,global.c_h,22.8*i,10,1,2,1,0)
	}
	else
	{
	create_laser(global.c_x+192-i*64,global.c_y,22.8*i,10,1,2,1,180)
	}
}