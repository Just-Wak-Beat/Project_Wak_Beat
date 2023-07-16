// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

///@param x
///@param y
///@param target_time
///@param des_time
///@param shake_scale
///@param shake_dir
///@param image_scale

function create_square_misile(argument0,argument1,argument2,argument3,argument4,argument5,argument6)
{
var xx = argument0
var yy = argument1

	
var laser__ = instance_create_depth(xx,yy,obj_player.depth-1,square_misile)
laser__.target_time = argument2
laser__.des_time = argument3
laser__.shake_scale = argument4
laser__.shake_dir = argument5
laser__.image_xscale = argument6
laser__.image_yscale = argument6
laser__.t_scale = argument6

return laser__;
}