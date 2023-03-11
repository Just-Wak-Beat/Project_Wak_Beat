var xx = room_width*0.5
var dir_ = 30
for(var i = 0; i <= 64; i++)
{
var _shaking_circle = create_explo_circle(xx+lengthdir_x(i*64,90+dir_),global.c_h+lengthdir_y(i*64,90+dir_),60+i,60,0,0,0.18,2,0,0,3)
_shaking_circle.sprite_index = spr_circle_outline

var _shaking_circle = create_explo_circle(xx+lengthdir_x(i*64,90-dir_),global.c_h+lengthdir_y(i*64,90-dir_),60+i,60,0,0,0.18,2,0,0,-3)
_shaking_circle.sprite_index = spr_circle_outline

create_explo_circle(xx+lengthdir_x(i*64,90+dir_),global.c_h+lengthdir_y(i*64,90+dir_),60+i,60,0,0,0.1,2,0,0,-3)
create_explo_circle(xx+lengthdir_x(i*64,90-dir_),global.c_h+lengthdir_y(i*64,90-dir_),60+i,60,0,0,0.1,2,0,0,3)
}