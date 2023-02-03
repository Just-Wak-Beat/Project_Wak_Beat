
for(var i = 0; i <= 12; i++)
{
create_laser(global.c_x+i*64+1024,global.c_y-512,60+abs(i)*2,20,0.1,0.1,1,15+180)
create_laser(global.c_w-i*64,global.c_y-512,60+abs(i)*2,20,0.1,0.1,1,15+180)
create_laser(global.c_x+i*64-512,global.c_y,60+abs(i)*2,20,0.1,0.1,1,15+180)
}


