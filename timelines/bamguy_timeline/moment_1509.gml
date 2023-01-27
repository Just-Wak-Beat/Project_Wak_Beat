
for(var i = 0; i <= 3; i++)
{
	if i%2 = 0
	{
	create_laser(global.c_x+192-i*64,global.c_h,22.8*i,10,1,2,1,0)
	}
	else
	{
	create_laser(global.c_x+192-i*64,global.c_y,22.8*i,10,1,2,1,180)
	}
}