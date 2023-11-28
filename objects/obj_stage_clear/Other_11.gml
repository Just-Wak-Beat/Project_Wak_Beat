/// @description Insert description here
// You can write your code in this editor

global.t_w_alpha = 0;
if (global.tutorial_now <= 0)
{
	global.hp = 5;
	global.show_rank = 0;

	audio_play_sound(result_sfx,0,false,global.master_volume*global.sfx_volume)
	global.back_to_game = 9999;
}


global.cannot_control = 0;


instance_destroy();