global.map_color = #4369a0
global.w_alpha = 1
heart_hitbox.image_angle = 360
heart_hitbox.t_angle = 0


var _ef = instance_create_depth(room_width*0.5,room_height*0.5,obj_player.depth-2,explosion_effect)
_ef.image_xscale = 3.7
_ef.image_yscale = 3.7
_ef.t_scale = 6
_ef.image_blend = c_white
