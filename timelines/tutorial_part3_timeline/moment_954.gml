
for(var i = 0; i <= 50; i++)
{
create_spike_circle(global.c_w,i*96,-4,-15,99999,0,0,0.25)
}

for(var i = 0; i < 32; i++)
{
	create_explo_circle(global.c_x+i*320,global.c_y+160,60+i*5,15,0,0,0.3,0,0,0,0)
	create_explo_circle(global.c_x+i*320,global.c_h-160,60+i*5,15,0,0,0.3,0,0,0,0)
}



