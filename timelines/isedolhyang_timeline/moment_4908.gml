for(var i = -3; i <= 3; i++)
{
var attack_ef = instance_create_depth(room_width*0.5+i*256,global.c_y-abs(i)*64,depth+1,hitbox_10)
attack_ef.gravity = 1
attack_ef.keep_spin_angle = irandom_range(5,1)*choose(-1,1)
attack_ef.image_xscale = 0.35
attack_ef.image_yscale = 0.35
attack_ef.w_alpha = 10
}