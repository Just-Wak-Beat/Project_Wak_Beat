/// @description Insert description here
// You can write your code in this editor

x -= 16


if global.hp > 0 && player.x+player.image_xscale*32 >= x
{
audio_play_sound(cleared_sfx,0,false,global.master_volume*global.sfx_volume*4)
global.w_alpha = 1


	if global.n_progress >= global.music_duration
	{
	instance_create_depth(room_width+128,irandom_range(0,room_height),player.depth-1,obj_stage_clear)
	global.show_progress_bar = 0
	}
	else
	{
	global.start_point = n_savepoint_position
	}
instance_destroy()
}