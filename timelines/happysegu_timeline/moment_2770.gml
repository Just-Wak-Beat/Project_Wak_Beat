var tmp_ins = create_explo_circle(room_width*0.5,room_height*0.5,60,40,1,0,1,0,0,0,0)
tmp_ins.sprite_index = spr_cross
tmp_ins.image_angle = 0
for(var i = 0; i < 4; i++)
{
	var tmp_angle = i*90
	create_arrow_laser(room_width*0.5+lengthdir_x(256,tmp_angle),room_height*0.5+lengthdir_y(256,tmp_angle),depth,0.8,tmp_angle,64,true,10,60)
}
