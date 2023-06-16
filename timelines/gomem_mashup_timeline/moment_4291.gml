global.gomem_mashup_effect = 7
global.w_alpha = 1
global.map_color = c_white
global.background_color = #c38fef
global.t_bg_color = 0
global.t_bg_color_alpha = 1


var _ins = create_projectile_spin(global.c_x,room_height*0.5,spr_circle,0.04,211,-5,0,10)
_ins.image_angle = 180


var _ins = create_projectile_spin(global.c_w,room_height*0.5,spr_circle,0.04,211,5,0,10)
_ins.image_angle = -180
