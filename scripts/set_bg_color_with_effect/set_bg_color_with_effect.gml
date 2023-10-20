// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

///@param color
///@param x
///@param y
///@param alpha

function set_bg_color_with_effect(argument0,argument1,argument2,argument3)
{
	var ins_tmp = instance_create_depth(argument1,argument2,obj_camera.depth-1-global.stack_bg_animations,changing_bg_color);
	if (instance_exists(changing_hitbox_color) && argument1 == changing_hitbox_color.x && argument2 == changing_hitbox_color.y && changing_hitbox_color.image_xscale == 0)
	{
		ins_tmp.alarm[0] = 1;
	}
	ins_tmp.alarm[1] = 1;
	ins_tmp.image_blend = argument0;
	ins_tmp.alpha = argument3;
}