create_explo_circle(room_width*0.5,room_height*0.5,60,10,15,0,1,0,0,0,0)

var tmp_c_x = (room_width - 3584)*0.5
var tmp_c_w = (room_width + 3584)*0.5
var tmp_c_y = (room_height - 2016)*0.5
create_laser(tmp_c_x,tmp_c_y,60,1650,4,2,7,180)
create_laser(tmp_c_w,tmp_c_y,60,1650,4,2,7,180)


if (global.t_selected_difficulty == 0)
{
	var tmp_ins = create_laser(room_width*0.5,room_height*0.5,60,320,4,2,1,0.7)
	tmp_ins.image_angle = 0;
	var tmp_ins = create_laser(room_width*0.5,room_height*0.5,60,320,4,2,1,0.7)
	tmp_ins.image_angle = 180;
}
var tmp_ins = create_laser(room_width*0.5,room_height*0.5,60,320,4,2,1,0.7)
tmp_ins.image_angle = 90;
var tmp_ins = create_laser(room_width*0.5,room_height*0.5,60,320,4,2,1,0.7)
tmp_ins.image_angle = 270;