heart_hitbox = instance_create_depth(room_width*0.5,room_height*0.5,obj_player.depth-1,hitbox_11)
heart_hitbox.sprite_index = spr_heart
heart_hitbox.t_scale = 0
heart_hitbox.shake_scale = 0
heart_hitbox.shake_dir = 0
heart_hitbox.t_angle = 0

create_explo_circle(room_width*0.5,room_height*0.5,50,10,1,0,1,0,0,0)