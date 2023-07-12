/// @description Insert description here
// You can write your code in this editor


if (global.yuha_effect1 > 0 && global.t_selected_difficulty == 0)
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
}