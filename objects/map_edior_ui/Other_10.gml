/// @description 타임라인 온오프
// You can write your code in this editor
if (global.show_music_title >= 200 || global.show_music_title <= 0)
{
	global.timeline_stop *= -1;
	if (global.timeline_stop == 1)
	{
		audio_stop_sound(global.n_music_id);
		instance_destroy(hitbox_parents);
		instance_destroy(changing_hitbox_color);
		instance_destroy(changing_bg_color);
		camera_focus_on(-4,-4,1)
	}
	else
	{
		global.n_progress -= 1;
		instance_destroy(hitbox_parents);
		activated = -1;
		global.editor_hitbox = -1;
		var _audio_asset = (global.n_map_list != 2) ? asset_get_index(global.n_music_name) : global.custom_audio_asset[code.n_stage];
		global.n_music_id = _audio_asset;
		global.n_music_instance = audio_play_sound(global.n_music_id,0,false,global.custom_map_volume_control*0.5*global.master_volume*global.bgm_volume*(global.mobile_mode*0.5+1))
		timeline_running = true;
		global.custom_map_timeline = true;
		audio_sound_set_track_position(global.n_music_instance,global.n_progress/60);
		with(hitbox_5)
		{
			x = xstart;
			y = ystart;
		}
	}
}


