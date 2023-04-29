for(var i = -3; i <= 3; i++)
{
	create_laser(room_width*0.2+i*64,global.c_y,60+abs(i)*5,26,1,2,2,180)
	create_laser(room_width*0.4+i*64,global.c_y,60+abs(i)*5,26,1,2,2,180)
	create_laser(room_width*0.6+i*64,global.c_y,60+abs(i)*5,26,1,2,2,180)
	create_laser(room_width*0.8+i*64,global.c_y,60+abs(i)*5,26,1,2,2,180)
}
