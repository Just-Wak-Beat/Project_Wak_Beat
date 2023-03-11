global.w_alpha = 1

var xx = irandom_range(global.c_x, global.c_w)
for(var i = 0; i <= 64; i++)
{
var _shaking_circle = create_explo_circle(xx,global.c_y+i*64,1+i*2,60,0,0,0.18,2,0,0,3)
_shaking_circle.sprite_index = spr_circle_outline

create_explo_circle(xx,global.c_y+i*64,1+i*2,60,0,0,0.1,2,0,0,-3)
}