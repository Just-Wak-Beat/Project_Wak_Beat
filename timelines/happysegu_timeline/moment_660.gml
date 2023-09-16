for(var i = -10; i < 10; i++)
{
	create_explo_circle(room_width*0.5,room_height*0.5+i*abs(i)*32,60+abs(i)*5,15,0.4/(1+abs(i)),0,1/(1+abs(i)),0,0,0,0)
}