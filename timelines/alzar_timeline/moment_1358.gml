global.t_bg_color_alpha = 1
global.background_color = #237293

var xx = obj_player.x+choose(-1,1)*irandom_range(320, 1280)
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


var xx = obj_player.x+choose(-1,1)*irandom_range(320, 1280)
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