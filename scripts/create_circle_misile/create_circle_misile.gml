// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

///@param x
///@param y
///@param target_time
///@param des_time
///@param shake_scale
///@param shake_dir
///@param image_scale

function create_circle_misile(argument0,argument1,argument2,argument3,argument4,argument5,argument6)
{
var ins__ = create_square_misile(argument0,argument1,argument2,argument3,argument4,argument5,argument6)
ins__.sprite_index = spr_circle;

return ins__;
}