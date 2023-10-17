global.w_alpha = 1
global.t_map_speed = 1
global.t_bg_color_alpha = 0.5
set_hitbox_color(c_gray,1,global.c_w,room_height*0.5);

global.camera_slow_zoom = 0.0001
camera_focus_on(-4,-4,0.8)

var attack_ef = instance_create_depth(irandom_range(global.c_x,global.c_w),global.c_y,depth+1,hitbox_10)
attack_ef.gravity = 0.5
attack_ef.image_xscale = 0.1
attack_ef.image_yscale = 0.1
attack_ef.sprite_index = spr_circle
attack_ef.w_alpha = 10
attack_ef.keep_spin_angle = 0
