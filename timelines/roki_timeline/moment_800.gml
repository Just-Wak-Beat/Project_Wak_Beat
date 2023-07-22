square.w_alpha = 10
square.automatic_angle = 10

for(var i = 0; i < 360; i += 90)
{
	var tmp = create_projectile_spin(room_width*0.5,room_height*0.5,spr_square,0.5,200,9.5,0,10)
	tmp.image_angle = i
}
