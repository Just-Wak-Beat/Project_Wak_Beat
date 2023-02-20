global.yoong_laser_dir = choose(60,90,120)
random_dir_laser = choose(-1,1)
cre_now1 = 1

for(var i = -1; i <= 1; i++)
{
var laser__ = create_laser(wakgood_shouting.x,global.c_h-256,60,45,6,1,2,random_dir_laser*0.8)
laser__.image_angle = global.yoong_laser_dir+270+i*15
}