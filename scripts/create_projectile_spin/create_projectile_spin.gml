// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information


///@param x
///@param y
///@param sprite_index
///@param scale
///@param target_time
///@param spin_angle
///@param scale_down
///@param speed
///@param create_delay
function create_projectile_spin(argument0,argument1,argument2,argument3,argument4,argument5,argument6,argument7)
{
	var _ins_ = instance_create_depth(argument0,argument1,obj_player.depth+15,hitbox_16)
	_ins_.sprite_index = argument2
	_ins_.image_xscale = argument3
	_ins_.target_time = argument4
	_ins_.spin_angle = argument5
	_ins_.scale_down = argument6
	_ins_._speed = argument7
	_ins_.create_delay = (argument8 == undefined) ? 5 : argument8;
	return _ins_;
}