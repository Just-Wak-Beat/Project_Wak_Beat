global.yoong_laser_dir2 = choose(60,90,120)
random_dir_laser2 = choose(-1,1)
cre_now2 = 1

for(var i = -1; i <= 1; i++)
{
var laser__ = create_laser(wakgood_shouting.x,global.c_h-256,60,70,6,1,2,random_dir_laser2*0.8)
laser__.image_angle = global.yoong_laser_dir2+270+i*15
}