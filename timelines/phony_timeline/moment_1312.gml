for(var i = 0; i < 360; i += 15)
{
var attack_ef = instance_create_depth(room_width*0.5-700,room_height*0.5,depth+1,hitbox_2)
attack_ef.direction = i
attack_ef.speed = 32
attack_ef.keep_spin_angle = 2
attack_ef.image_xscale = 0.4
attack_ef.image_yscale = 0.4
attack_ef.w_alpha = 10
}


if (global.t_selected_difficulty == 0)
{
var ins_tmp = instance_create_depth(room_width*0.5+640,room_height*0.5,depth,hitbox_22)
ins_tmp.image_xscale = 0.65;
ins_tmp.image_yscale = 0.65;
ins_tmp.des_timer = 180;
ins_tmp.image_angle = -45;
}