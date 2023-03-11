if global.check_died = 1
{
yonsei_hitbox = instance_create_depth(room_width*0.5,global.c_h,player.depth-1,hitbox_11)
yonsei_hitbox.sprite_index = spr_alzar
yonsei_hitbox.t_scale = 2
yonsei_hitbox.image_xscale = 2
yonsei_hitbox.image_yscale = 2
yonsei_hitbox.shake_scale = 0
yonsei_hitbox.shake_dir = 0
yonsei_hitbox.t_angle = 0
yonsei_hitbox.w_alpha = 10
yonsei_hitbox.t_x = room_width*0.5
yonsei_hitbox.t_y = global.c_h

spotlight1 = instance_create_depth(room_width*0.3,global.c_y+64,player.depth-1,hitbox_11)
spotlight1.sprite_index = spr_spot_light
spotlight1.t_scale = 1
spotlight1.shake_scale = 0
spotlight1.shake_dir = 0
spotlight1.t_angle = 0
spotlight1.w_alpha = 10
spotlight1.image_index = 0

spotlight2 = instance_create_depth(room_width*0.7,global.c_y+64,player.depth-1,hitbox_11)
spotlight2.sprite_index = spr_spot_light
spotlight2.t_scale = 1
spotlight2.shake_scale = 0
spotlight2.shake_dir = 0
spotlight2.t_angle = 0
spotlight2.w_alpha = 10
spotlight2.image_index = 1

create_explo_circle(room_width*0.3,room_height*0.35,60-21,94,1,0,1.3,0,0,0)
create_explo_circle(room_width*0.7,room_height*0.35,80-21,84,1,0,1.3,0,0,0)


create_explo_circle(room_width*0.3,room_height*0.65,119-21,35,1,0,1.3,0,0,0)
create_explo_circle(room_width*0.5,room_height*0.65,129-21,25,1,0,1.3,0,0,0)
create_explo_circle(room_width*0.7,room_height*0.65,139-21,15,1,0,1.3,0,0,0)


global.check_died = 0
global.alzar_effect = 0
global.alzar_effect2 = 0
}