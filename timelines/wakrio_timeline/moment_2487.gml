

for(var i = -10; i <= 10; i++)
{
	create_explo_circle(room_width*0.5+i*128,room_height*0.5,1+abs(i)*5,10,0.8,0,2.5/(1+abs(i*0.3)),0,0,0,0)
}

global.wakrio_effect3 = 0
global.w_alpha = 1
