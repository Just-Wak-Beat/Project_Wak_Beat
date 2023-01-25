/// @description Insert description here
// You can write your code in this editor




if global.show_music_title > 0
{
global.show_music_title ++

	if global.show_music_title < 240
	{
	music_title_alpha += (1 - music_title_alpha)*0.1
	}
	else
	{
	music_title_alpha += (-0.01 - music_title_alpha)*0.1
	}
	
	if global.show_music_title > 30
	{
	global.show_progress_bar = 1
	}
	
	if global.show_music_title > 500
	{
	global.show_music_title = 0
	}
}

if global.show_progress_bar = 1
{
progress_icon_alpha += (1 - progress_icon_alpha)*0.1
	if progress_icon_alpha > 0.98
	{
	progress_alpha += (1 - progress_alpha)*0.1
	}
	
	if progress_alpha > 0.6
	{
	progress_alpha_sec += (1 - progress_alpha_sec)*0.1
	}
	
	if progress_alpha > 0.98 && !audio_is_playing(global.n_music_id) && global.n_progress = 0
	{
	global.n_music_instance = audio_play_sound(global.n_music_id,0,false,0.5*global.master_volume*global.bgm_volume)
	}
	
	if global.n_progress < global.music_duration
	{
		if audio_is_playing(global.n_music_id)
		{
		global.n_progress ++
		}
	}
	else
	{
	global.n_progress = global.music_duration
	
		if !instance_exists(obj_savepoint)
		{
		instance_create_depth(room_width+32,0,player.depth+1,obj_savepoint)
		}
	}
}
else
{
progress_icon_alpha += (-0.01 - progress_icon_alpha)*0.1
progress_alpha += (-0.01 - progress_alpha)*0.1
progress_alpha_sec += (-0.01 - progress_alpha_sec)*0.1
}




global.w_alpha += (-0.01 - global.w_alpha)*0.1