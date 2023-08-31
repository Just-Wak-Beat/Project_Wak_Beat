if global.turisumo_effect != 1
{
	global.turisumo_effect_2 = 1
	global.turisumo_effect = 1
	global.turisumo_effect_3 = 1
	global.t_map_speed_y = 10

	var tmp_xx = (room_width - 3584)*0.5
	var tmp_yy = (room_height + 2016)*0.5
	for(var i = 0; i <= 64; i++)
	{
		var _shaking_circle = create_explo_circle(tmp_xx+i*128,tmp_yy+128,1+i*5,7200,0,0,0.5,2,0,0)
		_shaking_circle.direction = 90
	}
}