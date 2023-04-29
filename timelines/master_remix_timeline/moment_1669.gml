for(var i = -5; i <= 5; i++)
{
	create_laser(room_width*0.5+i*64,global.c_y,60+abs(i)*5,26,1,2,2,180)
	create_laser(room_width*0.25+i*64,global.c_y,60+abs(i)*5,26,1,2,2,180)
	create_laser(room_width*0.75+i*64,global.c_y,60+abs(i)*5,26,1,2,2,180)
}
global.master_remix_effect = 1