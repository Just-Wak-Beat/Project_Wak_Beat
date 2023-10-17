global.gomem_mashup_effect = 7
global.w_alpha = 1
set_hitbox_color(#c38fef,1,obj_player.x,obj_player.y);
global.background_color = #dfdfdf
global.t_bg_color = 0
global.t_bg_color_alpha = 1


var _ins = create_projectile_spin(global.c_x,room_height*0.5,spr_circle,0.04,211,-5,0,10)
_ins.image_angle = 180


var _ins = create_projectile_spin(global.c_w,room_height*0.5,spr_circle,0.04,211,5,0,10)
_ins.image_angle = -180


global.camera_slow_zoom = -0.00001