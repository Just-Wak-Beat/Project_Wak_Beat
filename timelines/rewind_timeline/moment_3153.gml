global.map_color = $FF7D5EEE
heart_hitbox.sprite_index = spr_heart

var _ef = instance_create_depth(room_width*0.5,room_height*0.5,obj_player.depth-2,explosion_effect)
_ef.image_xscale = 3.7
_ef.image_yscale = 3.7
_ef.t_scale = 6
_ef.image_blend = c_white
global.w_alpha = 1