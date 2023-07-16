global.t_bg_color_alpha = 1

yonsei_hitbox = instance_create_depth(room_width*0.65,room_height*0.5,obj_player.depth-1,hitbox_11)
yonsei_hitbox.sprite_index = spr_yonsei
yonsei_hitbox.t_scale = 1
yonsei_hitbox.shake_scale = 0
yonsei_hitbox.shake_dir = 0
yonsei_hitbox.t_angle = 360
yonsei_hitbox.w_alpha = 1
yonsei_hitbox.t_x = room_width*0.65

korea_univ_hitbox = instance_create_depth(room_width*0.35,room_height*0.5,obj_player.depth-1,hitbox_11)
korea_univ_hitbox.sprite_index = spr_korea_univ
korea_univ_hitbox.t_scale = 1
korea_univ_hitbox.shake_scale = 0
korea_univ_hitbox.shake_dir = 0
korea_univ_hitbox.t_angle = 360
korea_univ_hitbox.w_alpha = 1
korea_univ_hitbox.t_x = room_width*0.35

var xx = global.c_x+360
for(var i = 0; i <= 64; i++)
{
var _shaking_circle = create_explo_circle(xx,global.c_y+i*64,1+i*2,60,0,0,0.18,2,0,0,3)
_shaking_circle.sprite_index = spr_circle_outline

create_explo_circle(xx,global.c_y+i*64,1+i*2,60,0,0,0.1,2,0,0,-3)
}

var _ins = create_projectile_spin(xx,global.c_y,spr_circle,0.1,200,5,0.001,13)
_ins.image_angle = 180
_ins.vspeed = 92.16*0.5

var _ins = create_projectile_spin(xx,global.c_y,spr_circle,0.1,200,-5,0.001,13)
_ins.image_angle = 180
_ins.vspeed = 92.16*0.5

var xx = global.c_w-360
for(var i = 0; i <= 64; i++)
{
var _shaking_circle = create_explo_circle(xx,global.c_y+i*64,1+i*2,60,0,0,0.18,2,0,0,3)
_shaking_circle.sprite_index = spr_circle_outline

create_explo_circle(xx,global.c_y+i*64,1+i*2,60,0,0,0.1,2,0,0,-3)
}

var _ins = create_projectile_spin(xx,global.c_y,spr_circle,0.1,200,5,0.001,13)
_ins.image_angle = 180
_ins.vspeed = 92.16*0.5

var _ins = create_projectile_spin(xx,global.c_y,spr_circle,0.1,200,-5,0.001,13)
_ins.image_angle = 180
_ins.vspeed = 92.16*0.5