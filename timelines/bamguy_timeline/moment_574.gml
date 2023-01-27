for(var i = 0; i <= 6; i++)
{
create_laser(global.c_w,global.c_y+i*64,60+i*5,26,1,2,1,90)
create_laser(global.c_w,global.c_h-i*64,60+i*5,26,1,2,1,90)
}


var random_x = global.c_w-240
create_spike_circle(random_x,global.c_h,random_x,room_height*0.5,60,0,0,0.2)