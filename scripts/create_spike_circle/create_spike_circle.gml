// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

///@param x
///@param y
///@param t_x[-4]
///@param t_y[speed]
///@param target_time
///@param shake_scale
///@param shake_dir
///@param image_scale

function create_spike_circle(argument0,argument1,argument2,argument3,argument4,argument5,argument6,argument7)
{
var xx = argument0
var yy = argument1


var laser__ = instance_create_depth(xx,yy,obj_player.depth-10,hitbox_5)
if argument2 = -4
{
laser__.speed = argument3
}
laser__.t_x = argument2
laser__.t_y = argument3
laser__.target_time = argument4
laser__.shake_scale = argument5
laser__.shake_dir = argument6
laser__.t_scale = argument7

return laser__;
}