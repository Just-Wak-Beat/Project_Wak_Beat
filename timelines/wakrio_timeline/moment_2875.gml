for(var i = -8; i <= 8; i++)
{
	create_laser(room_width*0.5+i*70,global.c_y,60+abs(i)*5,26,1,2,1,180)
}

if (global.total_died_here > 0)
{
	for(var i = 0; i <= 8; i++)
	{
		create_explo_circle(global.c_x+i*512*0.9,global.c_y,1+i*5,10,1,0,0.9,0,0,0)

		create_explo_circle(global.c_x+i*512*0.9,global.c_h,1+i*5,10,1,0,0.9,0,0,0)
	}
}

global.wakrio_effect2 = 1
global.wakrio_effect = 0