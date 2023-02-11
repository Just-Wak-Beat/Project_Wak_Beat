global.ipad_random_xx = irandom_range(global.c_x,global.c_w)
global.ipad_random_xspeed = irandom_range(-15,15)
global.ipad_random_yspeed = irandom_range(-48,-64)
for(var i = 0; i <= 10; i++)
{
create_explo_circle(global.ipad_random_xx+i*global.ipad_random_xspeed*1.5,global.c_h-128+global.ipad_random_yspeed*i*1.5,58+i*3,10,0.1,0,0.7/(i*0.3+1),0,0,0)
}