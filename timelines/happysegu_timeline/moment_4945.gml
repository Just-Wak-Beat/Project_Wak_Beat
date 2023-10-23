global.n_camera_zoom = 1;
global.w_alpha = 1
global.master_remix_effect = 0

segu_ef = instance_create_depth(room_width*0.5,room_height*0.5,obj_player.depth-10,hitbox_11)
segu_ef.t_scale = 1
segu_ef.shake_scale = 0
segu_ef.shake_dir = 0
segu_ef.t_angle = -45-180
segu_ef.sprite_index = spr_cross_eye
segu_ef.image_index = 1;

var _ef = instance_create_depth(room_width*0.5,room_height*0.5,depth+1,explosion_effect)
_ef.image_xscale = 2
_ef.image_yscale = 2
_ef.t_scale = 5
_ef.image_blend = c_white


master_bpm_timer = (3600/global.bpm)+global.music_sync_offset*60;
global.happysegu_effect1 = 0;
global.happysegu_effect2 = 0;
global.happysegu_effect3 = 1;

set_hitbox_color(#52bcfe,0,room_width*0.5,room_height*0.5);
set_bg_color_with_effect(#52bcfe,room_width*0.5,room_height*0.5,0.4);
global.t_bg_color = 0.4
global.t_bg_color_alpha = 0.4


