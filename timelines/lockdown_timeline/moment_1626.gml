for(var i = -10; i <= 10; i++)
{
	create_laser(room_width*0.5+i*32,global.c_h,60+abs(i)*5,12,6/(1+abs(i)*2),2,1,0);
}