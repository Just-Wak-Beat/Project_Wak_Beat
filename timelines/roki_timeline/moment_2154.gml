for(var i = 0; i < 360; i += 90)
{
	var tmp = create_laser(global.c_w-640,room_height*0.5,1,200,1,0,1,0.4)
	tmp.image_angle = i

	var tmp = create_laser(global.c_x+640,room_height*0.5,1,200,1,0,1,-0.4)
	tmp.image_angle = i
}
