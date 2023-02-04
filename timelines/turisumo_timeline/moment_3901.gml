if global.turisumo_effect != 1
{
global.turisumo_effect_2 = 1
global.turisumo_effect = 1
global.turisumo_effect_3 = 1
global.t_map_speed_y = 10

	for(var i = 0; i <= 64; i++)
	{
	var _shaking_circle = create_explo_circle(global.c_x+i*128,global.c_h+128,1+i*5,7200,0,0,0.5,2,0,0)
	_shaking_circle.direction = 90
	}
}