// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information


///@param x
///@param y
///@param size
///@param spin_angle
///@param vspeed
///@param hspeed
///@param gravity
///@param gravity_direction
///@param sprite_index

function create_projectile(argument0,argument1,argument2,argument3,argument4,argument5,argument6,argument7,argument8)
{
	var attack_ef = instance_create_depth(argument0,argument1,depth+1,hitbox_2)
	attack_ef.keep_spin_angle = argument3
	attack_ef.image_xscale = argument2
	attack_ef.image_yscale = argument2
	attack_ef.gravity = argument6
	attack_ef.gravity_direction = argument7
	attack_ef.w_alpha = 10
	attack_ef.vspeed = argument4
	attack_ef.hspeed = argument5
	attack_ef.sprite_index = argument8
	
	return attack_ef;
}