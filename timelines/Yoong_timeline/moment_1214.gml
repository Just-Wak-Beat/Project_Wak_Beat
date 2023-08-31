
instance_destroy(hitbox_3)
global.w_alpha = 1

wakgood_shouting = instance_create_depth(room_width*0.5,room_height*2,obj_player.depth-999,hitbox_7)
wakgood_shouting.t_x = room_width*0.5
wakgood_shouting.t_y = global.c_h-256
wakgood_shouting.sprite_index = spr_yoongter
wakgood_shouting.image_xscale = 1.7
wakgood_shouting.image_yscale = 1.7

camera_focus_on(room_width*0.5,global.c_h-920,0.8)

global.t_bg_color = 0.6
global.t_bg_color_alpha = 0.6