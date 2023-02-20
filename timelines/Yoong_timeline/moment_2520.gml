for(var i = 0; i < 15; i++)
{
create_laser(global.c_w,global.c_h-480+i*64,60+i*5,10,1,2,1,90)
create_laser(global.c_w,global.c_h-480-i*64,60+i*5,10,1,2,1,90)
}

create_laser(global.c_w,global.c_h-480,60,10,1,2,30,90)