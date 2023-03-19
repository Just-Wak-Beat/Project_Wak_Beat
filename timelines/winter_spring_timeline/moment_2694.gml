var xx = camera_get_view_x(view_camera[0])
var xx_w = camera_get_view_width(view_camera[0])

var attack_ef = instance_create_depth(xx+xx_w*0.5-480,global.c_y,depth+1,hitbox_10)
attack_ef.gravity = 1
attack_ef.keep_spin_angle = irandom_range(5,1)*choose(-1,1)
attack_ef.image_xscale = 0.16
attack_ef.image_yscale = 0.16
attack_ef.w_alpha = 10
attack_ef.sprite_index = spr_snow

var attack_ef = instance_create_depth(xx+xx_w*0.5+480,global.c_y,depth+1,hitbox_10)
attack_ef.gravity = 1
attack_ef.keep_spin_angle = irandom_range(5,1)*choose(-1,1)
attack_ef.image_xscale = 0.16
attack_ef.image_yscale = 0.16
attack_ef.w_alpha = 10
attack_ef.sprite_index = spr_snow