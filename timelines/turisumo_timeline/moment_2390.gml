var _xx = room_width*0.7
for(var i = -4; i <= 4; i++)
{
	create_laser(_xx+i*64,global.c_y,60+abs(i)*5,20,0.1,2,2,180)
}