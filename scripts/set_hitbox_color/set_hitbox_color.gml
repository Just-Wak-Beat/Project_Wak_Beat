// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

///@param color
///@param effect
///@param x
///@param y
function set_hitbox_color(argument0,argument1,argument2,argument3)
{
	if (global.w_alpha >= 1 && global.t_w_alpha <= 0)
	{
		global.w_alpha = 0;
	}
	
	global.map_color = argument0;
	var ins_tmp = -4;
	if (argument1 == 1)
	{
		ins_tmp = instance_create_depth(argument2,argument3,obj_player.depth-9999,changing_hitbox_color)
		ins_tmp.alarm[1] = 1;
	}
	
	return ins_tmp;
}