/// @description Insert description here
// You can write your code in this editor

global.camera_sx = camera_get_view_width(view_camera[0])/3584

global.savepoint_text_alpha += (global.savepoint_text_t_alpha - global.savepoint_text_alpha)*0.1


global.map_speed += (global.t_map_speed - global.map_speed)*0.05
global.map_speed_y += (global.t_map_speed_y - global.map_speed_y)*0.05


global.t_bg_color_alpha += (global.t_bg_color - global.t_bg_color_alpha)*0.001





global.fav_anime += (1 - global.fav_anime)*0.1

if global.n_map_list = 0
{
global.n_map_id = n_stage
}
if global.n_map_list = 1
{
global.n_map_id = global.fav_map_id[n_stage]
}

if gamestart = 0 && keyboard_check_pressed(vk_anykey)
{
	if keyboard_check_pressed(vk_left)
	{
	global.n_map_list--
	}
	
	if keyboard_check_pressed(vk_right)
	{
	global.n_map_list++
	}
	
	if global.n_map_list < 0
	{
	global.n_map_list = 1
	}
	
	if global.n_map_list > 1
	{
	global.n_map_list = 0
	}
load_musicList(global.n_map_list)
}


	

if instance_exists(obj_album_ui)
{
global.highlight_time ++
}

if global.highlight_time > 360
{
global.highlight_music_volume += (-0.01 - global.highlight_music_volume)*0.05
	if global.highlight_time > 440
	{
	play_highlight = 1
	}
}
else
{
global.highlight_music_volume += (1 - global.highlight_music_volume)*0.05
}

if play_highlight = 1 && instance_exists(obj_album_ui)
{
global.highlight_time = 0
obj_album_ui.bpm_timer = 0
audio_stop_sound(global.highlight_music)
global.highlight_music = audio_play_sound(asset_get_index(global.n_music_name),0,false,0,global.stage_map_highlight_part[n_stage])
play_highlight = 0
}
	
//자동 볼륨 조절
if audio_is_playing(global.highlight_music)
{
audio_sound_gain(global.highlight_music,(1-gamestart_anime)*0.8*global.highlight_music_volume*global.master_volume*global.bgm_volume,0)
}



if gamestart = 0
{
global.ui_alpha += (1.01 - global.ui_alpha)*0.1
}



if gamestart = 1
{
global.t_bg_color = 0
global.t_select_map ++
global.t_bg_color_alpha += (global.t_bg_color - global.t_bg_color_alpha)*0.1
gamestart_anime += (1.01 - gamestart_anime)*0.1
global.ui_alpha += (-0.01 - global.ui_alpha)*0.1
	if !instance_exists(obj_album_ui)
	{
	global.select_map = 0
	global.t_select_map = 0
	global.show_music_title = 1
	gamestart = 2
	global.background_color = c_black
	global.t_bg_color = 1
	global.t_bg_color_alpha = 1
	global.n_music_id = -4
	global.n_progress = 0
	global.n_playing_tutorial = 0
	global.hmove = 0
	global.vmove = 0
	
		for(var i = 0; i <= 5; i++)
		{
		global.savepoint_position[i] = -4
		global.savepoint_color[i] = global.map_color
		}
		
		
	//discord presence
	discord_presence_update = 1
	}
}

if gamestart = 3
{
gamestart_anime += (-0.01 - gamestart_anime)*0.1

	if gamestart_anime <= 0
	{
	gamestart_anime = 0
	instance_create_depth(0,0,0,obj_album_ui)
	event_user(0)
	gamestart = 0
	}
}




if gamestart = 2 && global.show_progress_bar = 0 && global.n_progress > 1000
{
	if !instance_exists(obj_stage_clear)
	{
	instance_create_depth(global.c_w+128,irandom_range(global.c_y,global.c_h),player.depth-1,obj_stage_clear)
	}
}


if player.image_xscale < 0.1
{
instance_destroy(obj_stage_clear)
}