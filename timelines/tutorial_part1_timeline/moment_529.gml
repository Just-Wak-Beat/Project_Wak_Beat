audio_stop_sound(global.n_music_instance)

global.n_music_id = -4
global.n_progress = 0
global.n_music_instance = -4

timeline_running = false
if (global.tutorial_n_stage == 2)
{
	load_stage("왁트모르즈비","영바이브 (아버 편곡)","tutorial_part2",$FFFFA232,5411,60)
	obj_player.x = room_width*0.3
	with(obj_player_left_hp_effect)
	{
		x = obj_player.x
		y = obj_player.y
	}
		
	global.t_w_alpha = 0;
	global.cannot_control = 0;
	global.w_alpha = 10;
	audio_play_sound(cleared_sfx,0,false,global.master_volume*global.sfx_volume*4);
	
	with(obj_stage_clear)
	{
		event_user(2);
	}
}
else
{
	timeline_position = 0
}