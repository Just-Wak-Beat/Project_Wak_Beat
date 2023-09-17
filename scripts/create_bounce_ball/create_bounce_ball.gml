// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

///@param x
///@param y
///@param scale
///@param speed
///@param direction
///@param spin_angle
function create_bounce_ball(argument0,argument1,argument2,argument3,argument4,argument5)
{
	var tmp_ins = instance_create_depth(argument0,argument1,depth,hitbox_19);
	tmp_ins.image_xscale = argument2;
	tmp_ins.image_yscale = argument2;
	tmp_ins.speed = argument3*4;
	tmp_ins.t_speed = argument3;
	tmp_ins.direction = argument4;
	tmp_ins.keep_spin_angle = argument5;
	
	return tmp_ins;
}