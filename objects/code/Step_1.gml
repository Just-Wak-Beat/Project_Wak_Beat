/// @description Insert description here
// You can write your code in this editor
if (global.dev_mode == 1)
{
	global.tutorial_played = 1;
}

//장애물 회피 점수가 최대치를 못넘도록 설정
if (global.crossed_obstacle_num > 99)
{
	global.crossed_obstacle_num = 99;
}

//화면 흑백 효과
if (global.blackout_alpha > 0)
{
	global.blackout_alpha -= 0.05;
}

if (global.force_wipe_nickname != b_force_wipe_nickname)
{
	global.nickname = "";
	global.force_wipe_nickname = b_force_wipe_nickname;
}


//게임이 포커스 되지 않았을 때 소리 재생 X
if (!window_has_focus())
{
	if (outside_of_window == -4)
	{
		outside_of_window = global.master_volume;
		global.master_volume = 0;
	}
}
else
{
	if (outside_of_window != -4)
	{
		global.master_volume = outside_of_window;
		outside_of_window = -4;
	}
}


//자동 리로드 플레이어 전체 리더보드
if (automatic_reload_player_leaderboard > 0)
{
	automatic_reload_player_leaderboard++;
	
	if (automatic_reload_player_leaderboard == 2)
	{
		for(var i = 0; i < global.total_map; i++)
		{
			global.unlocked_music_name_new_list[i] = "";
			global.unlocked_music_name_new_list_rightside[i] = "";
			global.unlocked_music_name_new_list_color[i] = c_white;
			global.unlocked_music_name_new_list_color_rightside[i] = c_white;
		}
		
		
		show_debug_message("showing Player Ranking now")
		var temp_difficulty_str = (global.player_leaderboard_difficulty != 0) ? "하드코어" : "노말";
		global.notice_title = "Player Ranking";
		global.notice_title_sub = "<    (모든 곡의 "+string(temp_difficulty_str)+"난이도 스코어 총합 기준)    >";
		global.show_new_songs = 1;
		
		if (global.player_leaderboard_difficulty == 0)
		{
			setup_gmscoreboard("a70d65f34511fece65808739de70d212");
		}
		else
		{
			setup_gmscoreboard("134126fa6426e417e2b28e18f146f280");
		}
	}
	
	if (automatic_reload_player_leaderboard == 3)
	{
		var tmp_total_score = 0;
		for(var i = 0; i < global.origin_total_map; i++)
		{
			if (global.player_leaderboard_difficulty == 0)
			{
				tmp_total_score += (global.real_n_score[i] != "--") ? real(global.real_n_score[i]) : 0;
			}
			else
			{
				tmp_total_score += (global.real_n_score_hardcore[i] != "--") ? real(global.real_n_score_hardcore[i]) : 0;
			}
		}
		
		if (global.player_leaderboard_difficulty == 0)
		{
			if (global.total_score_normal < tmp_total_score)
			{
				set_score(global.nickname, tmp_total_score);
				global.total_score_normal = tmp_total_score;
			}
			else
			{
				get_scores(5);
			}
		}
		else
		{
			if (global.total_score_hardcore < tmp_total_score)
			{
				set_score(global.nickname, tmp_total_score);
				global.total_score_hardcore = tmp_total_score;
			}
			else
			{
				get_scores(5);
			}
		}
		
		save_and_load_data(0,0);
	}
	
	if (automatic_reload_player_leaderboard >= 150)
	{
		if !ds_list_empty(global.gmscoreboard_scores)
		{
			event_user(9);
			automatic_reload_player_leaderboard = 0;
		}
		else
		{
			automatic_reload_player_leaderboard = 100;
		}
	}
}




//자동 리로드 리더보드 (각 맵 점수의 리더보드)
if (automatic_reload_leaderboard > 0)
{
	var leaderboard_list_id = "JWAB_map_"+string(global.n_map_id+1)+"_"+string(global.t_selected_difficulty+1);
	automatic_reload_leaderboard ++;

	if (automatic_reload_leaderboard == 2)
	{
		for(var i = 0; i < global.total_map; i++)
		{
			global.unlocked_music_name_new_list[i] = "";
			global.unlocked_music_name_new_list_rightside[i] = "";
			global.unlocked_music_name_new_list_color[i] = c_white;
			global.unlocked_music_name_new_list_color_rightside[i] = c_white;
		}
		
		
		show_debug_message("showing ranking now")
		var temp_difficulty_str = (global.t_selected_difficulty == 0) ? " (Hardcore)" : "";
		global.notice_title = "Ranking";
		global.notice_title_sub = "<    "+string(global.n_music_title+temp_difficulty_str)+"    >";
		global.show_new_songs = 1;
		
		
		if (global.b_loaded_ranking == global.n_map_id)
		{
			automatic_reload_leaderboard = 0;
			event_user(5);
		}
	}
	
	if (automatic_reload_leaderboard == 170)
	{
		var temp_nickname = string_replace_all(global.nickname," ","")
		if (global.dev_mode == 1)
		{
			temp_nickname = temp_nickname+"[*_ABER]0";
		}
		else if (global.beta_tester == 1)
		{
			temp_nickname = temp_nickname+"[*_ABER]1";
		}
		var target_score = global.real_n_score[global.n_map_id];
		if (global.t_selected_difficulty == 0)
		{
			target_score = global.real_n_score_hardcore[global.n_map_id];
		}
		if (target_score == "--")
		{
			temp_nickname = "";
		}
		
		LootLockerSetPlayerName("");
		LootLockerSubmitScore(leaderboard_list_id,0);
		LootLockerSetPlayerName("");
		


		global.b_loaded_ranking = global.n_map_id;
	}
	

	if (automatic_reload_leaderboard > 300)
	{
		event_user(5)
		automatic_reload_leaderboard = 0
	}
}
else
{
	if (global.notice_title == "Ranking")
	{
		reload_leaderboard_automatically ++;
		if (reload_leaderboard_automatically > 300)
		{
			automatic_reload_leaderboard = 270;
			reload_leaderboard_automatically = -300;
		}
	}
	else
	{
		reload_leaderboard_automatically = 0;
	}
}


//가이드 메시지
if (global.t_b_alpha <= 0 && global.can_show_guide_mes == 1)
{
	global.t_b_alpha = -0.01;
	global.t_new_song_scroll = 0;
	global.new_song_scroll = 0;
	global.show_new_songs = 1;
	
	var check_new_song = 0;
	if (global.saved_notice_title == "조작법 가이드")
	{
		global.unlocked_music_name_new_list[check_new_song] = (global.mobile_mode == 0) ? "키보드 방향키 - 선택" : "화면 스크롤 - 선택";
		global.unlocked_music_name_new_list_color[check_new_song] = c_white;
		check_new_song ++
	
		global.unlocked_music_name_new_list[check_new_song] = (global.mobile_mode == 0) ? "Enter혹은 Space - 확인" : "화면 터치 - 확인";
		global.unlocked_music_name_new_list_color[check_new_song] = c_white;
		check_new_song ++
	}
	else if (global.saved_notice_title == "파트너 해금!")
	{
		global.unlocked_music_name_new_list[check_new_song] = "음악 속에 갇혀있던 멤버를 구출했습니다!";
		global.unlocked_music_name_new_list_color[check_new_song] = c_white;
		check_new_song ++
	
		global.unlocked_music_name_new_list[check_new_song] = "메인메뉴 좌측 있는 '파트너'탭에서 해금된 멤버를 확인할 수 있습니다";
		global.unlocked_music_name_new_list_color[check_new_song] = c_white;
		check_new_song ++
	}
	else if (global.saved_notice_title == "고정 하드코어 스테이지")
	{
		global.unlocked_music_name_new_list[check_new_song] = "고정 하드코어 스테이지는 난이도 옆에 '(Hardcore)'태그가 붙은 곡을 의미합니다.";
		global.unlocked_music_name_new_list_color[check_new_song] = c_white;
		check_new_song ++
	
		global.unlocked_music_name_new_list[check_new_song] = "이러한 곡들은 하드코어 모드로만 플레이 가능합니다.";
		global.unlocked_music_name_new_list_color[check_new_song] = c_white;
		check_new_song ++
	}
	else if (global.saved_notice_title == "보스 배틀 스테이지")
	{
		global.unlocked_music_name_new_list[check_new_song] = "보스 배틀 스테이지는 난이도 옆에 '(Boss)'태그가 붙은 곡을 의미합니다.";
		global.unlocked_music_name_new_list_color[check_new_song] = c_white;
		check_new_song ++
	
		global.unlocked_music_name_new_list[check_new_song] = "이러한 곡들은 최초 클리어 전까진 세이브 포인트가 없는 노멀 모드가 적용되며";
		global.unlocked_music_name_new_list_color[check_new_song] = c_white;
		check_new_song ++
		
		global.unlocked_music_name_new_list[check_new_song] = "최초 클리어 이후, 세이브 포인트가 존재하는 노멀 모드와 하드코어 모드를 선택할 수 있습니다.";
		global.unlocked_music_name_new_list_color[check_new_song] = c_white;
		check_new_song ++
	}
	
	for(var i = 0; i < check_new_song; i++)
	{
		global.unlocked_music_name_new_list_rightside[i] = "";
		global.unlocked_music_name_new_list_color_rightside[i] = c_white;
	}
	
	global.notice_title = global.saved_notice_title;
	
	global.new_unlocked_map_num = check_new_song;
	global.can_show_guide_mes = -1;
}








if (global.random_seed >= 0)
{
	global.random_seed++;
	random_set_seed(global.random_seed)
}

if (instance_exists(obj_stage_clear) && global.n_music_title != "왁트모르즈비")
{
	global.map_end_volumedown += (-0.01 - global.map_end_volumedown)*0.01
	if (global.n_progress >= global.music_duration)
	{
		audio_sound_gain(global.n_music_instance,global.custom_map_volume_control*0.5*global.master_volume*global.bgm_volume*(global.mobile_mode*0.5+1)*global.map_end_volumedown,0)
	}
}
else
{
	global.map_end_volumedown += (1 - global.map_end_volumedown)*0.1
}

//global.camera_sx = camera_get_view_width(view_camera[0])/3584

global.savepoint_text_alpha += (global.savepoint_text_t_alpha - global.savepoint_text_alpha)*0.1


global.map_speed += (global.t_map_speed - global.map_speed)*0.05
global.map_speed_y += (global.t_map_speed_y - global.map_speed_y)*0.05


global.t_bg_color_alpha += (global.t_bg_color - global.t_bg_color_alpha)*0.001

global.reload_n_map_list_value_animation += (global.reload_n_map_list_value - global.reload_n_map_list_value_animation)*0.1

global.fav_anime += (1 - global.fav_anime)*0.1

global.sync_setting_alpha += (global.sync_setting - global.sync_setting_alpha)*0.35

global.map_scroll_ui_position += (0 - global.map_scroll_ui_position)*0.1
global.map_list_ui_position += (0 - global.map_list_ui_position)*0.1

global.select_difficulty += (global.t_select_difficulty - global.select_difficulty)*0.22
global.selected_difficulty += (global.t_selected_difficulty - global.selected_difficulty)*0.22

global.rank_display_r_alpha += (0 - global.rank_display_r_alpha)*0.1
global.rank_display_b_alpha += (0 - global.rank_display_b_alpha)*0.1

	if global.n_progress > 0
	{
		global.rank_display_alpha += (1 - global.rank_display_alpha)*0.1
	}
	else
	{
		global.rank_display_alpha += (0 - global.rank_display_alpha)*0.1
	}


	//메인매뉴 돌아가기
	if (global.back_to_game > 120)
	{
		alarm[8] = 1
		global.t_bg_color_alpha = 0
		global.t_bg_color = 1
		global.w_alpha = global.w_alpha < 1 ? 1 : global.w_alpha
		global.savepoint_text_t_alpha = -0.01
		load_stage(global.stage_map_name[n_stage],global.stage_map_artist[n_stage],global.stage_map_audio_name[n_stage],global.stage_map_color[n_stage],global.stage_map_duration[n_stage],global.stage_bpm[n_stage])
		global.highlight_time = 0
		global.select_map = n_stage+2
		global.t_select_map = n_stage+2
		gamestart = 3
		global.t_bg_color = 1
		global.t_bg_color_alpha = 1
		global.back_to_game = 0
		global.show_progress_bar = 0
		global.sync_setting = 0
		global.cannot_control = 0
		global.joystick_xx = -4
		global.joystick_yy = -4
		global.joystick_n_xx = -4
		global.joystick_n_yy = -4
		global.scroll_n_m_xx = -1
		global.scroll_n_m_yy = -1
		global.hp = 5
		global.total_died_here = 0;
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
		
		if (global.title_menu_animation1 == -1)
		{
			audio_play_sound(common_sfx1,0,false,0.2*global.master_volume*global.sfx_volume)
			global.overtime_highlight_song = 0
		}
		
		alarm[8] = 1
	}


	//음악(오디오) 싱크 안맞는거 강제 픽스
	if gamestart = 2 && global.n_progress < global.music_duration && global.n_progress > 0 && audio_is_playing(global.n_music_instance) && global.n_music_instance != -4
	{
		if (timeline_running != false)
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
	
	
	
	var target_time_to_replay = 1220+sign(global.overtime_highlight_song)*450
	
	
	if (global.highlight_time > target_time_to_replay) || (gamestart != 0 && gamestart != 1.1 && global.show_new_songs <= 0)
	{
		global.highlight_music_volume += (-0.01 - global.highlight_music_volume)*0.05
		if (global.highlight_time > target_time_to_replay+80) && (((gamestart == 0 || gamestart == 1.1) && (global.sync_setting_alpha < 0.1) && global.title_menu_animation1 == -1)  || global.show_new_songs > 0)
		{
			play_highlight = 1
			global.overtime_highlight_song = 0
		}
	}
	else
	{
		if (global.tutorial_played > 0)
		{
			global.highlight_music_volume += (1-global.show_title_menu - global.highlight_music_volume)*0.05
		}
	}

	if (play_highlight == 1 && instance_exists(obj_album_ui) && global.show_title_menu < 1)
	{
		global.highlight_time = 0
		obj_album_ui.bpm_timer = 0
		audio_stop_sound(global.highlight_music)
		var _audio_asset = (global.n_map_list != 2) ? asset_get_index(global.n_music_name) : global.custom_audio_asset[n_stage];
		if (audio_exists(_audio_asset))
		{
			global.highlight_music = audio_play_sound(_audio_asset,0,false,0,global.stage_map_highlight_part[n_stage]-sign(global.show_title_menu)*3);
		}
		play_highlight = 0
	}
	
	//자동 볼륨 조절
	if audio_is_playing(global.highlight_music)
	{
		audio_sound_gain(global.highlight_music,global.custom_map_volume_control*(1-gamestart_anime)*0.8*global.highlight_music_volume*global.master_volume*global.bgm_volume*(global.mobile_mode*0.5+1),0)
	}



	if gamestart = 0
	{
		global.ui_alpha += (1.01 - global.ui_alpha)*0.1
	}



	if (gamestart == 1)
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
				global.paused = 0;
				instance_activate_all();
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
		if global.t_select_map <= 1
		{
			global.t_select_map = global.total_map+1
		}
	
		if global.t_select_map > global.total_map+1
		{
			global.t_select_map = 2
		}
		gamestart_anime += (-0.01 - gamestart_anime)*0.1
		if gamestart_anime <= 0
		{
			gamestart_anime = 0
			if !instance_exists(obj_album_ui)
			{
				instance_create_depth(0,0,0,obj_album_ui)
			}
			event_user(0)
			gamestart = 0
			global.n_progress = 0
		}
	}




	if gamestart = 2 && global.show_progress_bar = 0 && global.n_progress > 1000
	{
		if !instance_exists(obj_stage_clear)
		{
			instance_create_depth(global.c_w+128,irandom_range(global.c_y,global.c_h),obj_player.depth-1,obj_stage_clear)
		}
	}


	if obj_player.image_xscale < 0.1
	{
		instance_destroy(obj_stage_clear)
	}