global.w_alpha = 5


if global.low_graphics = false
{
	for(var i = 0; i <= 64; i++)
	{
	var _shaking_circle = create_explo_circle(global.c_x+i*80,global.c_h+32,1+i*2,7200,0,0,0.4,2,0,0)
	_shaking_circle.direction = 90
	}
}


for(var i = 0; i <= 64; i++)
{
var _shaking_circle = create_explo_circle(global.c_w-i*80,global.c_h,1+i*3,7200,0,0,0.4,2,0,0)
_shaking_circle.direction = 90
}


global.t_bg_color = 0.1
global.t_bg_color_alpha = 0.1
global.background_color = #5595ff

global.t_map_speed = 0
global.map_color = #5595ff

instance_destroy(hitbox_3)