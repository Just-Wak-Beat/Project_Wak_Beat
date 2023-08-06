global.w_alpha = 1
global.t_map_speed_y = 0

spike_ef = instance_create_depth(room_width*0.5,room_height*0.5,obj_player.depth-10,hitbox_8)
spike_ef.t_x = room_width*0.5;
spike_ef.t_y = room_height*0.5;
spike_ef.image_xscale = 0;
spike_ef.image_yscale = 0;
spike_ef.sprite_index = spr_circle_spike

global.lockdown_effect1 = 1