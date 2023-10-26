// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information


///@param x
///@param y
///@param depth
///@param num
///@param sprite_index
///@param scale
///@param head_sprite_index
///@param speed
///@param auto_shake
///@param direction
function create_worm(argument0,argument1,argument2,argument3,argument4,argument5,argument6,argument7,argument8,argument9)
{
	var __ins__head = -4;
	for(var i = 0; i < argument3; i++)
	{
		if i == 0
		{
			//head
			__ins__head = instance_create_depth(argument0,argument1,argument2,hitbox_15);
			__ins__head.sprite_index = argument6;
			__ins__head.image_xscale = argument5;
			__ins__head.image_yscale = argument5;
			__ins__head.parent_id = -4;
			__ins__head.body_num = argument3;
			__ins__head.my_id = i;
			__ins__head.speed_ = argument7;
			__ins__head.auto_shake = argument8;
			__ins__head.dir = argument9;
			__ins__head.direction = argument9;
			for(var ii = 0; ii < argument3; ii++)
			{
				__ins__head.id_num[ii] = __ins__head;
			}
		}
		else
		{
			var __ins__ = instance_create_depth(argument0,argument1,argument2,hitbox_15);
			__ins__.sprite_index = argument4;
			__ins__.image_xscale = argument5;
			__ins__.image_yscale = argument5;
			__ins__.parent_id = __ins__head;
			__ins__.body_num = argument3;
			__ins__.my_id = i;
			__ins__head.id_num[i] = __ins__;
			__ins__.auto_shake = argument8;
			__ins__.dir = 0
		}
	}
	
	return __ins__head;
}