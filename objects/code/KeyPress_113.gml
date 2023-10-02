/// @description Insert description here
// You can write your code in this editor
if global.dev_mode = 1
{
	for(var i = 0; i <= 7; i++)
	{
		if i = 0
		{
			global.artifact_owned[i] = 1;
		}
		else
		{
			global.artifact_owned[i] = 0;
		}
	}

	
	for(var i = 0; i < sprite_get_number(spr_illustrationCG); i++)
	{
		global.unlocked_player_skin[i] = 0
	}
	
	load_musicList(global.n_map_list)
	global.t_b_alpha = -0.01;
}
