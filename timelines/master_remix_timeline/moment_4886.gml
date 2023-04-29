global.master_remix_effect2 = 1

master_hitbox = instance_create_depth(room_width*0.5,global.c_h+640,player.depth-1,hitbox_11)
master_hitbox.sprite_index = spr_master
master_hitbox.t_scale = 2
master_hitbox.image_xscale = 2
master_hitbox.image_yscale = 2
master_hitbox.shake_scale = 0
master_hitbox.shake_dir = 0
master_hitbox.t_angle = 0
master_hitbox.w_alpha = 10
master_hitbox.t_x = room_width*0.5
master_hitbox.t_y = global.c_h+640
global.master_remix_effect4 = 1