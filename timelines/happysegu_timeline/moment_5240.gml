

var tmp_ins = create_laser(room_width*0.5,room_height*0.5,60,520,4,2,1,-0.7)
tmp_ins.image_angle = 0;
var tmp_ins = create_laser(room_width*0.5,room_height*0.5,60,520,4,2,1,-0.7)
tmp_ins.image_angle = 180;

if (global.t_selected_difficulty == 0)
{
	var tmp_ins = create_laser(room_width*0.5,room_height*0.5,60,520,4,2,1,-0.7)
	tmp_ins.image_angle = 90;
	var tmp_ins = create_laser(room_width*0.5,room_height*0.5,60,520,4,2,1,-0.7)
	tmp_ins.image_angle = 270;
}