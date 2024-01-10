if (global.t_selected_difficulty == 0)
{
	var ins_tmp = instance_create_depth(room_width*0.5,room_height*0.5+666,depth,hitbox_22)
	ins_tmp.image_xscale = 1.25;
	ins_tmp.image_yscale = 1.25;
	ins_tmp.des_timer = 180;
	ins_tmp.image_angle = -45;
}