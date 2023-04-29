for(var i = -3; i <= 3; i++)
{
	create_laser(global.c_w,room_height*0.3+i*64,60+abs(i)*5,26,1,2,2,90)
	create_laser(global.c_w,room_height*0.7+i*64,60+abs(i)*5,26,1,2,2,90)
}