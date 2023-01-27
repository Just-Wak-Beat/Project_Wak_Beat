
var attack_ef = instance_create_depth(global.c_w,irandom_range(global.c_y,global.c_h),depth+1,hitbox_2)
attack_ef.direction = 180
attack_ef.speed = 24
attack_ef.keep_spin_angle = 2
attack_ef.image_xscale = 0.4
attack_ef.image_yscale = 0.4
attack_ef.w_alpha = 10





if !instance_exists(obj_stage_clear) && global.tutorial_n_stage = 1
{
instance_create_depth(global.c_w+128,room_height*0.5,player.depth-1,obj_stage_clear)
}