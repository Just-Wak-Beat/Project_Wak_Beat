global.w_alpha = 1
for(var i = -12; i <= 0; i++)
{
	create_laser(room_width*0.5,room_height*0.5,60+abs(i)*2,20,0.1,0.1,1,i*30)
}