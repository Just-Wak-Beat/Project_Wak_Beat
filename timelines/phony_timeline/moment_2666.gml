
if (global.t_selected_difficulty == 0)
{
	var ins_tmp = instance_create_depth(room_width*0.5-640,room_height*0.5,depth,hitbox_22)
	ins_tmp.image_xscale = 0.65;
	ins_tmp.image_yscale = 0.65;
	ins_tmp.des_timer = 180;
	ins_tmp.image_angle = -45;
}