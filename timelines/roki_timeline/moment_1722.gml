

for(var i = 0; i < 360; i += 90)
{
	var tmp = create_laser(global.c_x+640,room_height*0.5,60,200,1,0,1,-0.2)
	tmp.image_angle = i
}





for(var i = 0; i < 360; i += 90)
{
	var tmp = create_laser(global.c_w-640,room_height*0.5,60,200,1,0,1,0.2)
	tmp.image_angle = i
}
