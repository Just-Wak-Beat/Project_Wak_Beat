// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

///@param x
///@param y
///@param target_time
///@param des_time
///@param shake_scale
///@param shake_dir
///@param laser_width
///@param laser_angle

function create_laser(argument0,argument1,argument2,argument3,argument4,argument5,argument6,argument7)
{
var xx = argument0
var yy = argument1

	
var laser__ = instance_create_depth(xx,yy,code.depth-2,hitbox_3)
laser__.target_time = argument2
laser__.des_time = argument3
laser__.shake_scale = argument4
laser__.shake_dir = argument5
laser__.saved_xscale = argument6

if abs(argument7) > 3
{
laser__.image_angle = argument7
laser__.auto_spin = 0
}
else
{
laser__.auto_spin = argument7
}

return laser__;
}