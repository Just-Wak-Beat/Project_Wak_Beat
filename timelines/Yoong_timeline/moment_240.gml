var random_dir = choose(-1,1)
var _xx_ = global.c_w
if random_dir = -1
{
_xx_ = global.c_x
}

var attack_ef = instance_create_depth(_xx_,irandom_range(global.c_y+32,global.c_h-32),depth+1,hitbox_2)
attack_ef.direction = 180
attack_ef.speed = 20*random_dir
attack_ef.keep_spin_angle = 2
attack_ef.image_xscale = 0.4
attack_ef.image_yscale = 0.4
attack_ef.w_alpha = 10
