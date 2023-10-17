/// @description Insert description here
// You can write your code in this editor
global.hp = 5;
global.show_rank = 0;
audio_play_sound(result_sfx,0,false,global.master_volume*global.sfx_volume)

if (global.tutorial_now <= 0)
{
	global.t_w_alpha = 0;
	global.cannot_control = 0;
	global.back_to_game = 9999;
}
else
{
	if (global.tutorial_n_stage == 0)
	{
		global.t_w_alpha = 0;
		global.cannot_control = 0;
		global.tutorial_played = 0;
	}
	else if (global.tutorial_n_stage == 1)
	{
		global.background_color = $FF161510;
		audio_play_sound(cleared_sfx,0,false,global.master_volume*global.sfx_volume*4);
	}
	else if (global.tutorial_n_stage == 2)
	{
		global.background_color = $FF331800;
		audio_play_sound(cleared_sfx,0,false,global.master_volume*global.sfx_volume*4);
	}
	else if (global.tutorial_n_stage == 3)
	{
		global.background_color = $FF1E2620;
		audio_play_sound(cleared_sfx,0,false,global.master_volume*global.sfx_volume*4);
	}
	else
	{
		global.tutorial_played = 1;
		global.back_to_game = 9999;
	}
}



instance_destroy();