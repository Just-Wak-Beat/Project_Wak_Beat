global.w_alpha = 0.13
global.ipad_random_xx = room_width*0.5
global.ipad_random_xspeed = -15
global.ipad_random_yspeed = -50
for(var i = 0; i <= 10; i++)
{
create_explo_circle(global.ipad_random_xx+i*global.ipad_random_xspeed*1.5,global.c_y+128+global.ipad_random_yspeed*i*1.5,58+i*3,10,0.1,0,0.7/(i*0.3+1),0,0,0)
}


global.ipad_random_xx = room_width*0.5
global.ipad_random_xspeed = 15
global.ipad_random_yspeed = -50
for(var i = 0; i <= 10; i++)
{
create_explo_circle(global.ipad_random_xx+i*global.ipad_random_xspeed*1.5,global.c_y+128+global.ipad_random_yspeed*i*1.5,63+i*3,10,1,0,0.7/(i*0.3+1),0,0,0)
}

global.ipad_random_xx = room_width*0.5
global.ipad_random_xspeed = -5
global.ipad_random_yspeed = -50
for(var i = 0; i <= 10; i++)
{
create_explo_circle(global.ipad_random_xx+i*global.ipad_random_xspeed*1.5,global.c_y+128+global.ipad_random_yspeed*i*1.5,68+i*3,10,1,0,0.7/(i*0.3+1),0,0,0)
}

global.ipad_random_xx = room_width*0.5
global.ipad_random_xspeed = 5
global.ipad_random_yspeed = -50
for(var i = 0; i <= 10; i++)
{
create_explo_circle(global.ipad_random_xx+i*global.ipad_random_xspeed*1.5,global.c_y+128+global.ipad_random_yspeed*i*1.5,73+i*3,10,1,0,0.7/(i*0.3+1),0,0,0)
}