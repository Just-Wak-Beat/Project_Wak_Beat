global.w_alpha = 1
set_hitbox_color($FF7D5EEE,1,room_width*0.5,room_height*0.5);
global.background_color = #833a55

var jururu_ = instance_create_depth(room_width*0.5,room_height,obj_player.depth,hitbox_7)
jururu_.t_x = room_width*0.5
jururu_.t_y = room_height*2

hitbox_7.t_y = global.c_h