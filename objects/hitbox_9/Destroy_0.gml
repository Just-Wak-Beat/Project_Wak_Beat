/// @description Insert description here
// You can write your code in this editor


if (can_draw == 1 && global.yuha_effect1 > 0 && global.t_selected_difficulty == 0)
{
	for(var i = 0; i < 360; i += 60)
	{
		var attack_ef = instance_create_depth(x,y,depth+1,hitbox_2)
		attack_ef.direction = i
		attack_ef.speed = 19
		attack_ef.keep_spin_angle = 2
		attack_ef.image_xscale = 0.5
		attack_ef.image_yscale = 0.5
		attack_ef.w_alpha = 10
	}
	global.w_alpha = 0.15
	
	var _ef = instance_create_depth(x,y,obj_player.depth-20,explosion_effect)
	_ef.image_xscale = 1.5
	_ef.image_yscale = 1.5
	_ef.t_scale = 3
	_ef.image_blend = c_white
}