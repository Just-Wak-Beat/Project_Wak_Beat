// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information


///@param x
///@param y
///@param depth
///@param scale
///@param dir
///@param speed
///@param effect_on
///@param shake
///@param time
function create_arrow_laser(argument0,argument1,argument2,argument3,argument4,argument5,argument6,argument7,argument8)
{
	var tmp = instance_create_depth(argument0,argument1,argument2,hitbox_18);
	tmp.image_xscale = argument3;
	tmp.image_yscale = argument3;
	tmp.direction = argument4;
	tmp.image_angle = argument4-135;
	tmp.t_speed = argument5;
	tmp.t_timer = argument8;
	
	//발사 이펙트
	tmp.attack_effect = argument6;

	
	
	//흔들림 효과
	if (argument7 > 0)
	{
		view_shake(2,argument7,0.1,0);
	}
	
	return tmp;
}