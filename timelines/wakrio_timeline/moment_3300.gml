global.wakrio_effect = 0;
for(var i = 0; i <= 64; i++)
{
	var tmp_ins = create_explo_circle(global.c_x+i*75,global.c_y+190,1+i,15,0,0,0.25,5,0,0,6)
	tmp_ins.sprite_index = spr_circle_outline
	tmp_ins.direction = 90

	var tmp_ins = create_explo_circle(global.c_w-i*75,global.c_h-190,1+i,15,0,0,0.25,-5,0,0,6)
	tmp_ins.sprite_index = spr_circle_outline
	tmp_ins.direction = 90
}