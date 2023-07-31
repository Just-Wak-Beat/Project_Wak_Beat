/// @description 스킨 설정
// You can write your code in this editor

global.t_b_alpha = -0.01
if global.can_change_music_list == 1 && global.t_select_difficulty = 0
{
	var n_skin = (global.n_player_skin >= 0) ? global.n_player_skin : 0
	
	
	global.t_n_select_skin = n_skin
	global.n_select_skin = n_skin
	
	
	global.character_setting ++

	if global.character_setting > 1
	{
		global.character_setting = 0
		gamestart = 0
		save_and_load_data(0,0)
		audio_play_sound(cleared_sfx,0,false,global.master_volume*global.sfx_volume*4)
	}
	else
	{
		gamestart = 4
		global.t_b_alpha = 0.9
	}
}
else
{
	if gamestart == 1.1
	{
		gamestart = 0
		global.t_select_difficulty = 0
		audio_play_sound(cleared_sfx,0,false,global.master_volume*global.sfx_volume*4)
	}
}
