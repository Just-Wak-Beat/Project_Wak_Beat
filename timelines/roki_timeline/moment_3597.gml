square2.w_alpha = 10
square2.automatic_angle *= -1

for(var i = 0; i < 360; i += 90)
{
	var tmp = create_projectile_spin(global.c_w-640,room_height*0.5,spr_square,0.5,100,9.5,0,10,10)
	tmp.image_angle = i
}