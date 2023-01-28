square_outline_hitbox1.t_scale = 30
square_outline_hitbox1.w_alpha = 1

square_outline_hitbox2.t_scale = 30
square_outline_hitbox2.w_alpha = 1

square_outline_hitbox3.t_scale = 45
square_outline_hitbox3.w_alpha = 1

square_outline_hitbox4.t_scale = 45
square_outline_hitbox4.w_alpha = 1


heart_hitbox = instance_create_depth(room_width*0.5,room_height*0.5,player.depth-1,hitbox_11)
heart_hitbox.sprite_index = spr_heart
heart_hitbox.t_scale = 1
heart_hitbox.shake_scale = 0
heart_hitbox.shake_dir = 0
heart_hitbox.t_angle = 0
