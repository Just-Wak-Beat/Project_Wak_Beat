/// @description Insert description here
// You can write your code in this editor

global.w_alpha = 10
if (global.tutorial_now <= 0 || (global.tutorial_now > 0 && !audio_is_playing(global.n_music_instance)) || global.tutorial_n_stage == 1)
{
	if (global.tutorial_now > 0)
	{
		global.show_music_title = 241;
	}
	
	global.show_rank = 0;
	global.t_w_alpha = 0;
	event_user(1);
}
else
{
	alarm[1] = 1;
}


