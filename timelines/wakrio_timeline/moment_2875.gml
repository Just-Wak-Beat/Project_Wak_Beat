for(var i = -8; i <= 8; i++)
{
	create_laser(room_width*0.5+i*70,global.c_y,60+abs(i)*5,26,1,2,1,180)
}

for(var i = 0; i <= 64; i++)
{
	var tmp_ins = create_explo_circle(global.c_x+i*75,global.c_y+190,1+i,15,0,0,0.25,5,0,0,6)
	tmp_ins.sprite_index = spr_circle_outline
	tmp_ins.direction = 90

	var tmp_ins = create_explo_circle(global.c_w-i*75,global.c_h-190,1+i,15,0,0,0.25,-5,0,0,6)
	tmp_ins.sprite_index = spr_circle_outline
	tmp_ins.direction = 90
}



global.wakrio_effect3 = 0
global.wakrio_effect = 0
