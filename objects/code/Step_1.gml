/// @description Insert description here
// You can write your code in this editor

//튜토리얼 스테이지 가이드 표기
if (fps_real >= 58)
{
	global.low_graphics = false;
}

if (global.n_music_title == "왁트모르즈비")
{
	global.tutorial_now = 1;
	
	if (global.tutorial_n_stage == 0)
	{
		global.savepoint_text_alpha = 1;
		if (global.mobile_mode == 1)
		{
			global.checkpoint_text = "왼쪽 화면을 터치해 조이스틱으로 이동하기";
		}
		else
		{
			global.checkpoint_text = "방향키를 눌러 이동하기";
		}
	}
}


//커스텀 유저 맵 재생 / 오피셜 유저맵 재생
if (((global.timeline_stop != 1 && global.play_custom_map == 1) || global.play_usermade_official_map == 1) && audio_is_playing(global.n_music_instance) && global.paused != 1)
{
	var map_file_dir = (global.n_map_list == 2) ? global.custom_map_file_dir[global.n_map_id] : string(global.default_directory)+"Official map files\\"+string(global.real_stage_map_audio_name[global.n_map_id]);
	var tmp_directory = string(map_file_dir)+"\\map_data.ini";
	event_user(11);
	show_debug_message("custom_map_data_load - "+string(global.n_progress-1)+" / "+string(global.savepoint_position[0]))
}




//로딩이 너무 긴 경우, 자동 캔슬
if (gamestart == 1)
{
	automatic_loading_cancel ++
	if (automatic_loading_cancel = 300)
	{
		show_message_log("스테이지 파일을 불러오는데 오류가 발생했습니다! [가이드 라인 이동합니다]");
		
		if (global.play_custom_map == 1)
		{
			url_open("https://github.com/Just-Wak-Beat/Project_Wak_Beat/blob/main/Guideline%20for%20Custom%20User%20Stage.md");
		}
	}
	else if (automatic_loading_cancel == 1)
	{
		clean_message_log()
		show_message_log("스테이지 불러오는 중...");
	}
	
	if (automatic_loading_cancel > 420)
	{
		global.back_to_game = 9999
	}
}


//메인메뉴 컬러 애니메이션 효과
if (instance_exists(obj_album_ui))
{
	if (get_dis_color(global.map_color,global.map_color_tmp) < 7)
	{
		global.map_color = (!is_string(global.map_color_tmp)) ? global.map_color_tmp : hex_to_color(global.map_color_tmp,1);
	}
	else
	{
		global.map_color = merge_color_new(global.map_color,global.map_color_tmp,0.12);
	}
	global.background_color = merge_color_new(global.map_color,c_black,0.9);
}


//개발자 모드이면 튜토리얼 자동 스킵
if (global.dev_mode == 1 || global.tutorial_skip == 1)
{
	global.tutorial_played = 1;
}



//레벨 한계치
if (global.level > 999)
{
	global.level = 999
	global.exp = global.max_exp-1;
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
if (global.rewind <= 0 && global.hp > 0)
{
	if (!window_has_focus())
	{
		if (outside_of_window == -4)
		{
			outside_of_window = global.master_volume;
			if (obj_player.image_xscale > 0)
			{
				if (global.map_editor != 1)
				{
					if (global.can_change_music_list == 1 && global.sync_setting == 0 && global.paused == 0 && (global.n_progress > 0 || music_title_alpha > 0))
					{
						event_user(2);
					}
				}
			}
			else
			{
				global.master_volume = 0;
			}
		}
	}
	else
	{
		if (outside_of_window != -4)
		{
			if (outside_of_window >= 0)
			{
				if (obj_player.image_xscale <= 0)
				{
					global.master_volume = outside_of_window;
				}
				outside_of_window = -4;
			} 
		}
	}
}

if (automatic_reload_leaderboard <= 0 && automatic_reload_player_leaderboard <= 0)
{
	if (global.cannot_connect > 0)
	{
		global.cannot_connect -= 0.05;
	}
}
else
{
	if (global.cannot_connect >= 20)
	{
		automatic_reload_leaderboard = 0;
		automatic_reload_player_leaderboard = 0;
		show_message_log("온라인 서버에 연결할 수 없습니다. 잠시 후 다시 시도 해주세요. ("+string(round(1+(global.cannot_connect-10)/3))+"s)");
	}
}


//자동 리로드 플레이어 전체 리더보드
if (automatic_reload_player_leaderboard > 0)
{
	automatic_leaderboard_cancle ++;
	if (automatic_reload_player_leaderboard == 1)
	{
		save_and_load_data(0,0);
		clean_guide_text();
		clean_message_log();
		global.cannot_connect += 1+global.cannot_connect;
		show_message_log("온라인 서버 연결 중...");
		
		show_debug_message("showing 명예의 전당 now")
		var temp_difficulty_str = (global.player_leaderboard_difficulty != 0) ? "하드코어" : "노말";
		global.notice_title = "명예의 전당 - "+string(temp_difficulty_str)+" 부문";
		global.notice_title_sub = "<    (모든 곡의 "+string(temp_difficulty_str)+"난이도 스코어 총합 기준)    >";
		global.show_new_songs = 1
	}
	automatic_reload_player_leaderboard++;
		

		

	
	if (automatic_reload_player_leaderboard == 3 && global.nickname != "")
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
			set_score(global.nickname, (tmp_total_score < 1) ? 1 : tmp_total_score, 0);
			get_scores(5,0);
			show_debug_message("점수 전송 - "+string(tmp_total_score)+" ("+string(global.nickname)+")");
			global.total_score_normal = tmp_total_score;
		}
		else
		{
			set_score(global.nickname, (tmp_total_score < 1) ? 1 : tmp_total_score, 1);
			get_scores(5,1);
			show_debug_message("점수 전송 - "+string(tmp_total_score)+" ("+string(global.nickname)+")");
			global.total_score_hardcore = tmp_total_score;
		}
	}
	

	if (automatic_reload_player_leaderboard >= 150)
	{
		show_message_log("명예의 전당 불러오는 중...");
		event_user(9);
		automatic_reload_player_leaderboard = 0;
	}
	
	if (automatic_leaderboard_cancle > 900)
	{
		show_message_log("명예의 전당을 불러오는 데 실패했습니다! (잠시 뒤 다시 시도해주세요)");
		global.automatic_load_ranking = 0;
		automatic_leaderboard_cancle = 0;
		automatic_reload_player_leaderboard = 0;
		if (gamestart < 1)
		{
			global.t_b_alpha = -0.02
			gamestart = 5
		}
		if (instance_exists(obj_album_ui))
		{
			obj_album_ui.alarm[4] = 15
		}
	}
}






//가이드 메시지
if (global.b_alpha < 0.1 && global.t_b_alpha <= 0 && global.t_b_alpha != -0.02 && global.can_show_guide_mes == 1)
{
	global.t_b_alpha = -0.01;
	global.t_new_song_scroll = 0;
	global.new_song_scroll = 0;
	global.show_new_songs = 1;
	
	var check_new_song = 0;
	if (global.saved_notice_title == "조작법 가이드")
	{
		global.unlocked_music_name_new_list[check_new_song] = "";
		global.unlocked_music_name_new_list_color[check_new_song] = c_white;
		check_new_song = 1;
	}
	else if (global.saved_notice_title == "파트너 해금!")
	{
		global.unlocked_music_name_new_list[check_new_song] = "아티팩트를 통해 멤버를 구출했습니다!";
		global.unlocked_music_name_new_list_color[check_new_song] = c_white;
		check_new_song ++
	
		global.unlocked_music_name_new_list[check_new_song] = "메인메뉴 좌측 있는 '파트너'탭에서 해금된 멤버를 확인할 수 있습니다";
		global.unlocked_music_name_new_list_color[check_new_song] = c_white;
		check_new_song ++
	}
	else if (global.saved_notice_title == "고정 하드코어 스테이지")
	{
		global.unlocked_music_name_new_list[check_new_song] = "고정 하드코어 스테이지는 난이도 옆에 '(Hardcore)'태그가 붙은 곡을 의미합니다.";
		global.unlocked_music_name_new_list_color[check_new_song] = #dc809a;
		check_new_song ++
	
		global.unlocked_music_name_new_list[check_new_song] = "이러한 곡들은 하드코어 모드로만 플레이 가능합니다.";
		global.unlocked_music_name_new_list_color[check_new_song] = c_white;
		check_new_song ++
	}
	else if (global.saved_notice_title == "보스 배틀 스테이지")
	{
		global.unlocked_music_name_new_list[check_new_song] = "보스 배틀 스테이지는 난이도 옆에 '(Boss)'태그가 붙은 곡을 의미합니다.";
		global.unlocked_music_name_new_list_color[check_new_song] = #dc809a;
		check_new_song ++
	
		global.unlocked_music_name_new_list[check_new_song] = "이러한 곡들은 최초 클리어 전까진 세이브 포인트가 없는 노멀 모드가 적용되며";
		global.unlocked_music_name_new_list_color[check_new_song] = c_white;
		check_new_song ++
		
		global.unlocked_music_name_new_list[check_new_song] = "최초 클리어 이후, 세이브 포인트가 존재하는 노멀 모드와 하드코어 모드를 선택할 수 있습니다.";
		global.unlocked_music_name_new_list_color[check_new_song] = c_white;
		check_new_song ++
	}
	else if (global.saved_notice_title == "주의! - 커스텀 유저 맵")
	{
		global.unlocked_music_name_new_list[check_new_song] = "커스텀 유저 맵은 유저들이 직접 원하는 곡으로 제작한 맵입니다.";
		global.unlocked_music_name_new_list_color[check_new_song] = c_white;
		check_new_song ++
	
		global.unlocked_music_name_new_list[check_new_song] = "따라서, '우왁굳'과 관련되지 않은 맵들이 존재할 수 있으며";
		global.unlocked_music_name_new_list_color[check_new_song] = #dc809a;
		check_new_song ++
		
		global.unlocked_music_name_new_list[check_new_song] = "음원에 대한 저작권 소유 또한 해당 맵 제작자와는 관련이 없을 수 있습니다";
		global.unlocked_music_name_new_list_color[check_new_song] = #dc809a;
		check_new_song ++
		
		global.unlocked_music_name_new_list[check_new_song] = "또한, 해당 유저 커스텀 맵은 '명예의 전당'순위에 영향을 끼치지 않습니다";
		global.unlocked_music_name_new_list_color[check_new_song] = c_gray;
		check_new_song ++
	}
	else if (global.saved_notice_title == "온라인 모드")
	{
		global.unlocked_music_name_new_list[check_new_song] = "온라인 모드는 다른 유저들과 함께 스테이지를 클리어하는 '멀티플레이 모드' 입니다.";
		global.unlocked_music_name_new_list_color[check_new_song] = c_white;
		check_new_song ++
	
		global.unlocked_music_name_new_list[check_new_song] = "현재는 사용할 수 없는 기능이며, 추후 추가되지 않을 수도 있습니다.";
		global.unlocked_music_name_new_list_color[check_new_song] = #dc809a;
		check_new_song ++
		
		global.unlocked_music_name_new_list[check_new_song] = "";
		global.unlocked_music_name_new_list_color[check_new_song] = c_white;
		check_new_song ++
		
		global.unlocked_music_name_new_list[check_new_song] = "";
		global.unlocked_music_name_new_list_color[check_new_song] = c_white;
		check_new_song ++
		
		global.unlocked_music_name_new_list[check_new_song] = "(혹시 반응이 좋으면 추가될지도..?)";
		global.unlocked_music_name_new_list_color[check_new_song] = c_gray;
		check_new_song ++
	}
	else if (global.saved_notice_title == "새로운 소식!")
	{
		//패치노트
		var has_new_version = 0;
		
		if !ds_list_empty(global.gmscoreboard_scores[2])
		{
			//show_message_log("ds_list_size : "+string(ds_list_size(global.gmscoreboard_scores[global.player_leaderboard_difficulty])))
			var tmp_list = ds_list_find_value(global.gmscoreboard_scores[2], 0);
			var temp_score = tmp_list[? "score"];
				
			show_message_log(temp_score);
			if (temp_score > global.version_real*10000)
			{
				has_new_version = temp_score;
			}
		}
		
		
		
		if (has_new_version == 0)
		{
			global.unlocked_music_name_new_list[check_new_song] = "패치노트 - "+string(global.version);
			global.unlocked_music_name_new_list_color[check_new_song] = #2BA6ED;
			check_new_song ++;
		
			global.unlocked_music_name_new_list[check_new_song] = "___";
			global.unlocked_music_name_new_list_color[check_new_song] = c_white;
			check_new_song ++;
		
		
			global.unlocked_music_name_new_list[check_new_song] = "모바일 전용 일시 정지 버튼 추가";
			check_new_song ++;
			
			global.unlocked_music_name_new_list[check_new_song] = "커스텀 맵 타임라인 버그 수정";
			check_new_song ++;
			
			global.unlocked_music_name_new_list[check_new_song] = "커스텀 맵 탄막 복사 기능 추가";
			check_new_song ++;
			
			global.unlocked_music_name_new_list[check_new_song] = "커스텀 맵 탄막 파라미터 값 (크기, 이동 속도...) 관련 버그 수정";
			check_new_song ++;
			
			global.unlocked_music_name_new_list[check_new_song] = "커스텀 맵 탄막 디폴트 값 관련 버그 수정";
			check_new_song ++;
			
			global.unlocked_music_name_new_list[check_new_song] = "(이외에 제보 주신 버그들은 수정 중에 있습니다!)";
			check_new_song ++;
		}
		else //새로운 버전 존재함
		{
			global.unlocked_music_name_new_list[check_new_song] = "새로운 버전으로 업데이트가 가능합니다!";
			global.unlocked_music_name_new_list_color[check_new_song] = #2BA6ED;
			check_new_song ++;
			
			global.unlocked_music_name_new_list[check_new_song] = "현재 버전 - "+string(global.version);
			global.unlocked_music_name_new_list_color[check_new_song] = c_gray;
			global.unlocked_music_name_new_list_rightside[check_new_song] = "새로운 버전 - Release "+string(temp_score/10000);
			global.unlocked_music_name_new_list_color_rightside[check_new_song] = merge_color(c_white,c_gray,0.5);
			check_new_song ++;
		
			global.unlocked_music_name_new_list[check_new_song] = "___";
			global.unlocked_music_name_new_list_color[check_new_song] = c_white;
			check_new_song ++;
			
			global.unlocked_music_name_new_list[check_new_song] = "(아무키나 누르면 자동으로 다운로드 페이지로 이동합니다)";
			global.unlocked_music_name_new_list_color[check_new_song] = c_gray;
			check_new_song ++;
			
			global.update_plz = 1;
		}
	}

	if (global.saved_notice_title != "새로운 소식!")
	{
		for(var i = 0; i < check_new_song; i++)
		{
			global.unlocked_music_name_new_list_rightside[i] = "";
			global.unlocked_music_name_new_list_color_rightside[i] = c_white;
		}
	}
	else
	{
		for(var i = 0; i < check_new_song-2; i++)
		{
			global.unlocked_music_name_new_list_color[i+2] = merge_color(c_white,c_black,fix_num_inside((i+1)/(check_new_song+2),0,0.9));
		}
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
	if (global.back_to_game > 90)
	{
		event_user(0);
		alarm[8] = 5;
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
		global.total_damaged = 0;
		audio_play_sound(cleared_sfx,0,false,global.master_volume*global.sfx_volume*4)
		audio_stop_sound(global.n_music_instance)
		timeline_running = false;
		global.custom_map_timeline = false;
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
		
		alarm[8] = 5;
	}


	//음악(오디오) 싱크 안맞는거 강제 픽스
	if (gamestart == 2 && global.n_progress < global.music_duration && global.n_progress > 0 && audio_is_playing(global.n_music_instance) && global.n_music_instance != -4)
	{
		if (timeline_running != false || global.custom_map_timeline != false)
		{
			global.automatic_sycn_fixing++
			if global.automatic_sycn_fixing > 5
			{
				global.n_sync = abs(audio_sound_get_track_position(global.n_music_instance)*60 - global.n_progress)
				if global.n_sync >= 5
				{
					audio_sound_set_track_position(global.n_music_instance,global.n_progress/60);
				}
				global.automatic_sycn_fixing = 0;
			}
		}
	}


	//환경설정 박자 효과음
	if (gamestart == 4 && global.sync_setting == 1)
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
	if (gamestart == 0)
	{
		if (global.n_map_list == 0)
		{
			global.n_map_id = fix_num_inside(n_stage,0,255);
		}
		else if (global.n_map_list == 1)
		{
			global.n_map_id = fix_num_inside(global.fav_map_id[n_stage],0,255);
		}
		else if (global.n_map_list == 2)
		{
			global.n_map_id = fix_num_inside(n_stage,0,255);
		}
		else if (global.n_map_list == 3 || global.n_map_list == 4 || global.n_map_list == 5)
		{
			global.n_map_id = fix_num_inside(global.map_id_origin[n_stage],0,255);
		}
		
		if (global.n_map_id <= 0)
		{
			global.n_map_id = 0;
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
				global.tutorial_now = 0
				global.hmove = 0
				global.vmove = 0
	
	
				if (global.play_custom_map != 1)
				{
					for(var i = 0; i <= 5; i++)
					{
						global.savepoint_position[i] = -4
						global.savepoint_color[i] = global.map_color
					}
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
		if (!instance_exists(obj_stage_clear) && global.paused != 1)
		{
			instance_create_depth(global.c_w+128,irandom_range(global.c_y,global.c_h),obj_player.depth-1,obj_stage_clear)
		}
	}


	if obj_player.image_xscale < 0.1
	{
		instance_destroy(obj_stage_clear)
	}