// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

///@param x
///@param y
///@param target_time
///@param des_time
///@param shake_scale
///@param shake_dir
///@param image_scale
///@param shaking_speed
///@param falling_vspeed
///@param falling_hspeed
///@param shake_speed | 1

function create_explo_circle(argument0,argument1,argument2,argument3,argument4,argument5,argument6,argument7,argument8,argument9,argument10)
{
var xx = argument0
var yy = argument1

	
var laser__ = instance_create_depth(xx,yy,code.depth-2,hitbox_4)
laser__.target_time = argument2
laser__.des_time = argument3
laser__.shake_scale = argument4
laser__.shake_dir = argument5
laser__.image_xscale = argument6*0.5
laser__.image_yscale = argument6*0.5
laser__.t_scale = argument6*0.5
laser__.shake_movement = argument7
laser__.falling_vspeed = argument8
laser__.falling_hspeed = argument9
laser__.shake_speed = (argument10 == undefined) ? 1 : argument10;

return laser__;
}