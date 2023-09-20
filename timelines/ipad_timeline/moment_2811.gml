
if global.ipad_effect = 0
{
	create_laser(room_width*0.35,global.c_y,10,200,4,3,3,180)
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
}