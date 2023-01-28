var xx = irandom_range(global.c_x,global.c_w)
var yy = global.c_h+360
var scale = 0.5

for(var i = 0; i <= 360*1.2; i += 15)
{
create_explo_circle(xx+lengthdir_x(512*scale,i),yy+lengthdir_y(512*scale,i),1+i/5,7200,0,0,scale*0.5,0.1,-7,0)
}