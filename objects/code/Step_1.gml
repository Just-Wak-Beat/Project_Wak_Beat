/// @description Insert description here
// You can write your code in this editor

global.camera_sx = camera_get_view_width(view_camera[0])/3584

global.savepoint_text_alpha += (global.savepoint_text_t_alpha - global.savepoint_text_alpha)*0.1


global.map_speed += (global.t_map_speed - global.map_speed)*0.05
global.map_speed_y += (global.t_map_speed_y - global.map_speed_y)*0.05


global.t_bg_color_alpha += (global.t_bg_color - global.t_bg_color_alpha)*0.001

global.reload_n_map_list_value_animation += (global.reload_n_map_list_value - global.reload_n_map_list_value_animation)*0.1

global.fav_anime += (1 - global.fav_anime)*0.1

global.sync_setting_alpha += (global.sync_setting - global.sync_setting_alpha)*0.23

global.map_scroll_ui_position += (0 - global.map_scroll_ui_position)*0.1
global.map_list_ui_position += (0 - global.map_list_ui_position)*0.1

//메인매뉴 돌아가기
if global.back_to_game > 120
{
global.w_alpha = 1
global.savepoint_text_t_alpha = -0.01
load_stage(global.stage_map_name[n_stage],global.stage_map_artist[n_stage],global.stage_map_audio_name[n_stage],global.stage_map_color[n_stage],global.stage_map_duration[n_stage],global.stage_bpm[n_stage])
global.highlight_time = 0
play_highlight = 1
global.select_map = n_stage+2
global.t_select_map = n_stage+2
gamestart = 3
global.t_bg_color = 1
global.t_bg_color_alpha = 1
global.back_to_game = 0
global.show_progress_bar = 0
global.sync_setting = 0
global.cannot_control = 0
audio_play_sound(cleared_sfx,0,false,global.master_volume*global.sfx_volume*4)
audio_stop_sound(global.n_music_instance)
timeline_running = false
event_user(0)
instance_destroy(hitbox_parents)
instance_destroy(obj_savepoint)
instance_destroy(obj_savepoint)
instance_destroy(square_misile)
instance_destroy(obj_button)
}

if global.n_setting_button != 9999 && global.n_setting_button != -4
{
global.back_to_game = 0
}


//곡 선택 효과음
if gamestart = 0 && global.b_t_select_map != round(global.t_select_map)
{
global.map_scroll_ui_position = round(global.t_select_map) - global.b_t_select_map
global.b_t_select_map = round(global.t_select_map)
audio_play_sound(common_sfx1,0,false,0.2*global.master_volume*global.sfx_volume)
}


//음악 싱크 안맞는거 강제 픽스
if gamestart = 2 && global.n_progress > 0 && audio_is_playing(global.n_music_instance) && global.n_music_instance != -4
{
global.automatic_sycn_fixing++
	if global.automatic_sycn_fixing > 60
	{
	global.n_sync = abs(audio_sound_get_track_position(global.n_music_instance)*60 - global.n_progress)
		if global.n_sync >= 10
		{
		audio_sound_set_track_position(global.n_music_instance,global.n_progress/60);
		}
	global.automatic_sycn_fixing = 0;
	}
}


//환경설정 박자 효과음
if gamestart = 4 && global.sync_setting = 1
{
sync_setting_timer ++
	if sync_setting_timer > 120+global.music_sync_offset*3*60
	{
	sync_setting_timer = 0
	sync_play_part = 0
	}

	if sync_setting_timer != 0
	{
		if sync_setting_timer < 120
		{
			if sync_setting_timer%30 = 0
			{
			sync_play[sync_play_part] = 1
			sync_play_part ++
			}
		
			if sync_setting_timer%30 = 0 && sync_setting_timer%90 != 0
			{
			audio_play_sound(kick_sfx,0,false,global.sfx_volume*global.master_volume*0.25)
			}
	
			if sync_setting_timer%90 = 0
			{
			audio_play_sound(drum_sfx,0,false,global.sfx_volume*global.master_volume*0.25)
			}
		}
	}
	

		
	for(var i = 0; i <= 2; i++)
	{
		if sync_play[i] > global.music_sync_offset*3*60
		{
		global.sync_setting_circle_scale[i] = 0.7
		global.setting_beat_w_alpha[i] = 1
		sync_play[i] = 0
		}
		
		if sync_play[i] > 0
		{
		sync_play[i] ++
		}
	}
}


// global.n_map_list setting
if gamestart = 0
{
	if global.n_map_list = 0
	{
	global.n_map_id = n_stage
	}
	if global.n_map_list = 1
	{
	global.n_map_id = global.fav_map_id[n_stage]
	}
	if global.n_map_list = 2
	{
	global.n_map_id = n_stage
	}
	if global.n_map_list = 3
	{
	global.n_map_id = global.unlocked_map_id[n_stage]
	}
	
	if keyboard_check_pressed(vk_anykey)
	{
	event_user(1)
	}
}



global.background_w_alpha += (0 - global.background_w_alpha)*0.1
	

if instance_exists(obj_album_ui)
{
global.highlight_time ++
}

if global.highlight_time > 360 || gamestart != 0
{
global.highlight_music_volume += (-0.01 - global.highlight_music_volume)*0.05
	if global.highlight_time > 440 && gamestart = 0 && global.sync_setting_alpha < 0.1
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
var _audio_asset = (global.n_map_list != 2) ? asset_get_index(global.n_music_name) : global.custom_audio_asset[n_stage];
global.highlight_music = audio_play_sound(_audio_asset,0,false,0,global.stage_map_highlight_part[n_stage])
play_highlight = 0
}
	
//자동 볼륨 조절
if audio_is_playing(global.highlight_music)
{
audio_sound_gain(global.highlight_music,(1-gamestart_anime)*0.8*global.highlight_music_volume*global.master_volume*global.bgm_volume*(global.mobile_mode*0.5+1),0)
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

	if global.music_duration > 0
	{
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
	else
	{
	load_data_timer++
		if global.n_map_list = 2
		{
			if load_data_timer < 10
			{
			global.custom_map_duration[global.n_map_id] = floor(audio_sound_length(global.custom_audio_asset[global.n_map_id])*60);
			loading_now_progress = 1
			}
		}
		else
		{
		loading_now_progress = 1
		}
		
		if loading_now_progress = 1 && load_data_timer >= 10 && load_data_timer < 20
		{
		load_musicList(global.n_map_list)
		show_debug_message("global.n_map_id : "+string(global.n_map_list))
		loading_now_progress = 2
		}
		
		if loading_now_progress = 2 && load_data_timer >= 20 && load_data_timer < 30
		{
		load_stage(global.stage_map_name[n_stage],global.stage_map_artist[n_stage],global.stage_map_audio_name[n_stage],global.stage_map_color[n_stage],global.stage_map_duration[n_stage],global.stage_bpm[n_stage])
		loading_now_progress = 3
		}
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
	global.n_progress = 0
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