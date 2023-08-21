// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information


///@param x
///@param y
///@param depth
///@param scale
///@param target_time
///@param t_speed
///@param direction
///@param angle
///@param fast_movement
function create_cylinder(argument0,argument1,argument2,argument3,argument4,argument5,argument6,argument7,argument8)
{
	var ins__ = instance_create_depth(argument0,argument1,argument2,hitbox_17)
	ins__.image_xscale = argument3
	ins__.image_yscale = argument3
	ins__.target_time = argument4
	ins__.t_speed = argument5
	ins__.direction = argument6
	ins__.image_angle = argument7
	ins__.fast_movement = argument8
	return ins__;
}