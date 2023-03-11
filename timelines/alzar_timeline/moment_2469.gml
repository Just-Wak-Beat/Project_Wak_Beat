global.w_alpha = 0.3

spotlight1 = instance_create_depth(room_width*0.3,global.c_y+64,player.depth-1,hitbox_11)
spotlight1.sprite_index = spr_spot_light
spotlight1.t_scale = 1
spotlight1.shake_scale = 0
spotlight1.shake_dir = 0
spotlight1.t_angle = 0
spotlight1.w_alpha = 1
spotlight1.image_index = 0

spotlight2 = instance_create_depth(room_width*0.7,global.c_y+64,player.depth-1,hitbox_11)
spotlight2.sprite_index = spr_spot_light
spotlight2.t_scale = 1
spotlight2.shake_scale = 0
spotlight2.shake_dir = 0
spotlight2.t_angle = 0
spotlight2.w_alpha = 1
spotlight2.image_index = 1