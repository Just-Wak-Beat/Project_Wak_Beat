for(var i = 0; i < 360; i += 60)
{
	var _ins = create_projectile_spin(room_width*0.5,room_height*0.5,spr_circle,0.04,40,5,0.0001,32,15)
	_ins.image_angle = i
}

