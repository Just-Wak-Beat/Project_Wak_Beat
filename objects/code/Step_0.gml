/// @description Insert description here
// You can write your code in this editor

//업데이트
if (global.update_plz > 0 && global.t_b_alpha <= 0 && global.notice_title == "")
{
	url_open("https://just-wak-beat.github.io/Project-Wak-Beat-website/");
	global.update_plz = 0;
}



//닉네임 태그
if (global.notice_title == "" && global.show_new_songs <= 0 && string_length(global.nickname) >= 3 && string_pos("3S4n92jfA",global.nickname) == 0)
{
	var temp_nickname = string(global.nickname)
	if (global.dev_mode == 1)
	{
		temp_nickname = temp_nickname+"3S4n92jfA0";
	}
	else if (global.streamer != 0)
	{
		temp_nickname = temp_nickname+"3S4n92jfA2";
	}
	else if (global.custom_mapper == 1)
	{
		temp_nickname = temp_nickname+"3S4n92jfA3";
	}
	else if (global.beta_tester == 1)
	{
		temp_nickname = temp_nickname+"3S4n92jfA1";
	}
	global.nickname = temp_nickname;
	decode_nametag(global.nickname);
}






//에디터 모드
global.play_custom_map = (global.n_map_list == 2) ? 1 : 0;
if (global.play_custom_map == 1)
{
	if ((global.show_progress_bar == 1 || global.map_editor == 1) && custom_map_loading >= 0)
	{
		custom_map_loading ++
		if (custom_map_loading == 10)
		{
			show_message_log("커스텀 맵 데이터 적용 중...");
			event_user(15);
		}
		
		if (custom_map_loading >= 60 && custom_map_loading%60 == 0)
		{
			event_user(14);
		}
		
		if (custom_map_loading >= 360)
		{
			custom_map_loading = -1;
		}
	}
	
	if (global.map_editor == 1 && is_array(global.c_map_param))
	{
		window_set_cursor(cr_default)
		global.hp = sprite_get_number(spr_player)-7;
	
		if (obj_player.image_xscale > 0)
		{
			var ins_check = 0;
			with(obj_button)
			{
				ins_check += (button_id == 7) ? 1 : 0;
			}
	
			if (ins_check == 0)
			{
				var yy = camera_get_view_y(view_camera[0]);
				var yy_h = camera_get_view_height(view_camera[0]);
				var xx = camera_get_view_x(view_camera[0]);
				var xx_w = camera_get_view_width(view_camera[0]);
				instance_create_depth(xx+xx_w*0.5,yy+yy_h*0.95,depth,map_edior_ui)
		
				var buttom_ui = instance_create_depth(xx+xx_w*0.5,yy+yy_h*0.95,depth,obj_button)
				buttom_ui.button_id = 7
				buttom_ui.sprite_index = spr_square
			}
		}
	
		if (obj_player.image_xscale <= 0 || global.sync_setting > 0)
		{
			with(obj_button)
			{
				if (button_id == 7 || button_id >= 100)
				{
					instance_destroy();
				}
			}
			instance_destroy(map_edior_ui);
		}
	}
}




//인게임중에 설정 열기
if (global.rewind == 0 && global.can_change_music_list == 1 && (!instance_exists(obj_stage_clear) || global.checkpoint_text = "ESC를 눌러 환경설정 열기"))
{
	if (global.sync_setting == 0 && global.paused == 0 && (global.n_progress > 0 || music_title_alpha > 0))
	{
		if (keyboard_check_pressed(vk_escape) || (keyboard_check_pressed(vk_backspace) && global.mobile_mode == 1))
		{
			event_user(2)
		}
	}

	if (gamestart == 1.1)
	{
		if (keyboard_check_pressed(vk_escape) || (keyboard_check_pressed(vk_backspace) && global.mobile_mode == 1))
		{
			gamestart = 0;
			global.t_select_difficulty = 0;
			audio_play_sound(cleared_sfx,0,false,global.master_volume*global.sfx_volume*4);
			window_set_cursor(cr_none);
		}
	}
}


//레벨 시스템
if (global.ui_alpha >= 1 && instance_exists(obj_album_ui) && global.t_b_alpha <= 0)
{
	global.max_exp = 1000+global.level*10;
	if (floor(global.exp_for_draw/100) >= floor(global.max_exp/100))
	{
		global.level++;
		global.exp -= global.max_exp;
		global.exp_for_draw = 0;
		global.exp_w_alpha = 1;
		

		if (global.level == 3 && global.guide_showed[1] == 0)
		{
			show_guide("보스 배틀 스테이지");
			global.guide_showed[1] = 1;
		}
		
		if (global.level == 6 && global.guide_showed[2] == 0)
		{
			show_guide("고정 하드코어 스테이지");
			global.guide_showed[2] = 1;
		}
	}
	
	if (abs(global.exp_for_draw - global.exp) > 0.1)
	{
		if (!audio_is_playing(setting_scroll_sfx))
		{
			audio_play_sound(setting_scroll_sfx,0,false,global.master_volume*global.sfx_volume*32)
		}
	}
	global.exp_for_draw += (global.exp - global.exp_for_draw)*0.1;
	global.exp_w_alpha += (0 - global.exp_w_alpha)*0.1;
}

if (global.level < 0)
{
	global.level = 0
}


//조이스틱
global.joystick_alpha += (sign(global.joystick_activated+1) - global.joystick_alpha)*0.15
if global.joystick_activated != -1
{
	global.hmove = floor((global.joystick_n_xx - global.joystick_xx)/(global.joystick_size*0.5)*10)/10
	global.vmove = floor((global.joystick_n_yy - global.joystick_yy)/(global.joystick_size*0.5)*10)/10
}



if global.mobile_mode = 1 && global.sync_setting = 0
{
	for(var i = 0; i < 6; i++)
	{
		var is_click = device_mouse_check_button_pressed(i, mb_left);
		if device_mouse_check_button(i, mb_left)
		{
			global.clicking_timer ++
		}

		var xx = camera_get_view_x(view_camera[0])
		var xx_w = camera_get_view_width(view_camera[0])


		if instance_exists(obj_player) && obj_player.image_xscale > 0
		{
			if global.hp > 0
			{
				if device_mouse_x(i) < xx+xx_w*0.5
				{
					if is_click
					{
						global.joystick_xx = device_mouse_x(i)
						global.joystick_yy = device_mouse_y(i)
						global.joystick_activated = i
					}
				}
				else
				{
					if global.dash_cooltime <= 0 && is_click
					{
						with(obj_player)
						{
							if object_index = obj_player
							{
								event_user(0)
							}
						}
					}
				}
			}
		}
		else
		{
			if (is_click && global.can_change_music_list == 1 && gamestart == 0)
			{
				global.joystick_xx = device_mouse_x(i)
				global.joystick_yy = device_mouse_y(i)
				global.scroll_activated = i
			}
		}
	
		if global.clicking_del = 0 && device_mouse_check_button_released(i, mb_left)
		{
			global.clicking_del = 1
			alarm[5] = 1
		}
	
		var is_clicked_joystick = device_mouse_check_button_released(global.joystick_activated, mb_left);
		var is_clicked_scroll = device_mouse_check_button_released(global.scroll_activated, mb_left);
		if (is_clicked_joystick || (global.cannot_control == 1 && instance_exists(obj_stage_clear)) || instance_exists(dead_explosion))
		{
			global.joystick_activated = -1
			global.vmove = 0
			global.hmove = 0
		}
		
		if (is_clicked_scroll)
		{
			global.t_select_map = round(global.t_select_map)
			global.scroll_activated = -1
		}
	}
}

	


//캐릭터 변경
if global.b_player_skin != global.player_skin
{
	obj_player.image_index = global.player_skin*7+(5-global.hp)
	global.player_color = $FF4AB539
	global.die_sfx = wakgood_hurt
	
	if global.player_skin = 1
	{
		global.player_color = $FF60006F
		global.die_sfx = ine_hurt
	}
	if global.player_skin = 2
	{
		global.player_color = $FF969EA3
		global.die_sfx = bichan_hurt
	}
	if global.player_skin = 3
	{
		global.player_color = $FFFFC065
		global.die_sfx = segu_hurt
	}
	if global.player_skin = 4
	{
		global.player_color = $FFFF9761
		global.die_sfx = lilpa_hurt
	}
	if global.player_skin = 5
	{
		global.player_color = $FF8812D5
		global.die_sfx = jururu_hurt
	}
	if global.player_skin = 6
	{
		global.player_color = $FF62E0F6
		global.die_sfx = jing_hurt
	}
	global.b_player_skin = global.player_skin
}


global.select_map += (global.t_select_map - global.select_map)*0.13

if (global.n_music_title == "왁트모르즈비")
{
	global.tutorial_now = 1
}
else
{
	global.checkpoint_text = "중간 사베(save) 도착!"
}


if (global.show_music_title > 0 && global.paused == 0)
{
	global.show_music_title ++

	if global.show_music_title < 180
	{
		music_title_alpha += (1 - music_title_alpha)*0.1
			
		if (global.t_selected_difficulty != 0 && global.random_seed == -4)
		{
			global.random_seed = 0;
		}
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

if (global.show_progress_bar == 1 || global.tutorial_now == 1)
{
	if (progress_icon_alpha < 0.3 && instance_exists(obj_player) && obj_player.image_xscale > 0)
	{
		clean_message_log();
		if (global.streamer > 1)
		{
			show_message_log("[이세돌 보너스 효과] 추가 체력 3개 지급!");
		}
	}
	
	progress_icon_alpha += (1 - progress_icon_alpha)*0.1
	if progress_icon_alpha > 0.98
	{
		progress_alpha += (1 - progress_alpha)*0.1
	}
	
	if progress_alpha > 0.6
	{
		progress_alpha_sec += (1 - progress_alpha_sec)*0.1
	}
	

	
	if (global.tutorial_played >= 0 || global.tutorial_now == 1)
	{
		if (global.show_music_title > 240 || (global.tutorial_now == 1 && global.tutorial_n_stage > 0))
		{
			if (global.n_music_id == -4 && (global.n_progress == 0 || global.tutorial_now == 1))
			{
				if (global.tutorial_played != 1 && global.tutorial_n_stage == 0)
				{
					//튜토리얼
					if (!instance_exists(obj_stage_clear) && global.paused != 1)
					{
						instance_create_depth(global.c_w+128,irandom_range(global.c_y,global.c_h),obj_player.depth-1,obj_stage_clear)
					}
				}
				else
				{
					if (global.tutorial_n_stage == 0)
					{
						global.tutorial_n_stage = 1;
					}
					saved_n_stage = n_stage+2
					global.start_point = 0
					global.cannot_control = 0
					var _audio_asset = (global.n_map_list != 2) ? asset_get_index(global.n_music_name) : global.custom_audio_asset[n_stage];
					global.n_music_id = _audio_asset
					global.n_music_instance = audio_play_sound(global.n_music_id,0,false,global.custom_map_volume_control*0.5*global.master_volume*global.bgm_volume*(global.mobile_mode*0.5+1))
					event_user(8)
					var _timeline_index_ = asset_get_index(string(global.n_music_name)+"_timeline")
					if (timeline_exists(_timeline_index_) && global.n_map_list != 2)
					{
						global.play_custom_map = 0;
						window_set_cursor(cr_none)
						timeline_index = _timeline_index_
						timeline_position = 0
						timeline_loop = false
						var time__ = floor(global.music_sync_offset*3*60)
						if (time__ > 0 && global.tutorial_now != 1)
						{
							alarm[7] = time__
						}
						else
						{
							timeline_running = true
						}
						global.map_color = (is_string(global.map_color_tmp)) ? hex_to_color(global.map_color_tmp,1) : global.map_color_tmp;
						timeline_speed = 1;
		
						show_debug_message("timeline")
					}
					else
					{
						timeline_running = false;
						timeline_index = -4;
						global.t_selected_difficulty = 1;
						global.selected_difficulty = 1;
						var map_file_dir = (global.n_map_list == 2) ? global.custom_map_file_dir[global.n_map_id] : string(global.default_directory)+"Official map files\\"+string(global.real_stage_map_audio_name[global.n_map_id]);
						if (global.n_map_list != 2)
						{
							global.play_usermade_official_map = 1;
						}
						
						var tmp_directory = string(map_file_dir)+"\\map_data.ini";
						global.c_map_param = array_create(global.music_duration+1,"");
						global.custom_map_timeline = true;
						if (file_exists(tmp_directory))
						{
							ini_open(tmp_directory);
							for(var i = 0; i <= global.music_duration; i++)
							{
								//파라미터 값은 띄어쓰기로 구분된 문자열로 만들어 저장
								var tmp_str = string(ini_read_string("map_data"+string(i),"obj_data",""));
								global.c_map_param[i] = tmp_str;
							}
							
							global.save_point_num = floor(ini_read_real("map_data","savepoint_num",0));
							show_debug_message("savepoint_num : "+string(global.save_point_num))
							for(var ii = 0; ii < global.save_point_num; ii++)
							{
								var tmp_save_point = floor(ini_read_real("map_data","savepoint"+string(ii),-4));
								global.savepoint_position[ii] = tmp_save_point;
								global.savepoint_color[ii] = -4;
								show_debug_message("savepoint_num : "+string(tmp_save_point))
							}
		
							ini_close();
						}
						
						if (global.t_selected_difficulty != 1)
						{
							for(var ii = 0; ii < global.save_point_num; ii++)
							{
								global.savepoint_position[ii] = -4;
								global.savepoint_color[ii] = -4;
							}
						}
					}
				}	
			}
		}
	
		if (global.n_progress < global.music_duration)
		{
			if (global.timeline_stop == -1 && global.paused == 0 && (audio_is_playing(global.n_music_id) || global.n_progress > 2000) && global.hp > 0)
			{
				global.n_progress ++;
				audio_sound_gain(global.n_music_instance,global.custom_map_volume_control*0.5*global.master_volume*global.bgm_volume*(global.mobile_mode*0.5+1)*global.map_end_volumedown,0)
			}
		}
		else
		{
			global.n_progress = global.music_duration;
			
			if (global.n_music_title != "왁트모르즈비")
			{
				timeline_running = false;
				global.custom_map_timeline = false;
			}
	
	
			if (instance_exists(obj_player) && obj_player.image_xscale > 0)
			{
				if (global.timeline_stop != 1 && !instance_exists(obj_savepoint) && !instance_exists(obj_stage_clear))
				{
					if abs(global.map_speed_y) > 0
					{
						var save_ = instance_create_depth(0,0,obj_player.depth+1,obj_savepoint)
						save_.n_savepoint_position = 99999
						save_.n_color = c_black
						save_.image_angle = 90
					}
					else
					{
						var save_ = instance_create_depth(room_width,0,obj_player.depth+1,obj_savepoint)
						save_.n_savepoint_position = 99999
						save_.n_color = c_black
					}
				}
			}
		}
	}
	else //첫 튜토리얼 안 했을경우
	{
		if (!instance_exists(obj_stage_clear) && global.paused != 1)
		{
			instance_create_depth(global.c_w+128,room_height*0.5,obj_player.depth-1,obj_stage_clear)
			global.t_bg_color = 1;
			global.t_bg_color_alpha = 1;
			global.artifact_type = 0;
			global.savepoint_text_t_alpha = 1;
		}
	}
}
else
{
	progress_icon_alpha += (-0.01 - progress_icon_alpha)*0.1
	progress_alpha += (-0.01 - progress_alpha)*0.1
	progress_alpha_sec += (-0.01 - progress_alpha_sec)*0.1
}




//discord presence
if discord_presence_update > 0
{
	if discord_presence_update%60 = 0 && global.n_progress < global.music_duration
	{
		np_update();
		var time_sec = floor(global.stage_map_duration[global.n_map_id]/60)
		var n_time_sec = floor(global.n_progress/60)-((global.play_custom_map == 1) ? floor(global.music_sync_offset*3*60) : 0);
		var album_id = global.stage_map_audio_name[global.n_map_id];
		
		if (global.n_map_list == 2)
		{
			album_id = "triangle"
		}
	
		np_setpresence_more("","", false);
		
		if (global.map_editor == 1)
		{
			np_setpresence("[커스텀 유저 맵 제작 중...]",string(global.stage_map_name[global.n_map_id]), string(album_id), "type"+string(global.artifact_type));
		}
		else
		{
			if (global.paused != 1)
			{
				np_setpresence("["+string(convert_sec_to_clocktime(n_time_sec))+"/"+string(convert_sec_to_clocktime(time_sec))+"]",string(global.stage_map_name[global.n_map_id]), string(album_id), "type"+string(global.artifact_type));
			}
			else
			{
				np_setpresence("[Paused]",string(global.stage_map_name[global.n_map_id]), string(album_id), "type"+string(global.artifact_type));
			}
		}
	}
	discord_presence_update ++
	
	if (global.n_progress >= global.music_duration+floor(global.music_sync_offset*3*60))
	{
		discord_presence_update = 0
	}
}

global.b_alpha += (global.t_b_alpha - global.b_alpha)*0.1
global.w_alpha += (global.t_w_alpha - global.w_alpha)*0.1



//되감기 이펙트
if global.rewind > 0
{
	if (global.rewind > 60)
	{
		var tmp_val = (global.rewind < 162) ? 2 : 1;
		audio_sound_set_track_position(global.n_music_instance,(global.n_progress-(global.rewind/tmp_val-60))/60);
		audio_sound_pitch(global.n_music_instance,1-fix_num((global.rewind-30)/300))
	}

	if (global.rewind == 1)
	{
		audio_play_sound(global.die_sfx,0,false,global.master_volume*global.sfx_volume)
		audio_play_sound(dead_sfx,0,false,global.master_volume*global.sfx_volume*0.2)
		//audio_stop_sound(global.n_music_instance)
	}
	
	
	if (global.rewind == 51)
	{
		audio_play_sound(rewinding_sfx,0,false,global.master_volume*global.sfx_volume*0.3)
		timeline_running = false;
		global.custom_map_timeline = false;
	}
	
	
	if global.rewind >= 91
	{
		with(hitbox_parents)
		{
			gravity = 0;
			speed += (0 - speed)*0.05
			
			if variable_instance_exists(other,"keep_spin_angle")
			{
				keep_spin_angle += (0 - keep_spin_angle)*0.05
			}
		}
		global.t_map_speed += (0 - global.t_map_speed)*0.05
		global.t_map_speed_y += (0 - global.t_map_speed_y)*0.05
	}
	
	
	if (global.rewind == 1 || global.rewind == 21 || global.rewind == 41)
	{
		for(var i = 0; i < 360; i += 45)
		{
			var ef__ = instance_create_depth(obj_player.died_xx,obj_player.died_yy,depth-1,dead_explosion)
			ef__.direction = i;
			ef__.speed = 24;
		}
	}
	
	
	if (global.rewind == 163 || global.rewind == 173 || global.rewind == 183)
	{
		for(var i = 0; i < 360; i += 45)
		{
			var tmp_xx = obj_player.died_xx+lengthdir_x(512,i);
			var tmp_yy = obj_player.died_yy+lengthdir_y(512,i);
			var ef__ = instance_create_depth(tmp_xx,tmp_yy,depth-1,dead_explosion)
		}
	}
	
	global.rewind += (global.rewind < 162) ? 2 : 1;
		
	for(var i = 0; i < 16; i++)
	{
		global.rewind_effect_line_pos[i] += 20
	
		var yy_h = camera_get_view_height(view_camera[0])
		
		if global.rewind_effect_line_pos[i] > yy_h+64
		{
			global.rewind_effect_line_pos[i] -= yy_h+64
		}
		
		if global.rewind_effect_line_pos[i] < -64
		{
			global.rewind_effect_line_pos[i] += yy_h
		}
	}

	
	if global.rewind >= 132 && global.rewind <= 152
	{
		for(var i = 0; i < 16; i++)
		{
			global.rewind_effect_line_pos[i] -= 55
		}
	}
	
	if global.rewind >= 188 && global.rewind <= 203
	{
		for(var i = 0; i < 16; i++)
		{
			global.rewind_effect_line_pos[i] += 25
		}
	}
	
	if global.rewind = 162
	{
		global.rewind_effect_line_angle = -20*4
	
		var yy_h = camera_get_view_height(view_camera[0])
		
		for(var i = 0; i < 16; i++)
		{
			global.rewind_effect_line_pos[i] = irandom_range(0,yy_h)
		}
	}
	
	if global.rewind = 172
	{
		global.rewind_effect_line_angle = 0
	}
	
	if global.rewind = 177
	{
		global.rewind_effect_line_angle = -20*4
	
		var yy_h = camera_get_view_height(view_camera[0])
		
		for(var i = 0; i < 16; i++)
		{
			global.rewind_effect_line_pos[i] = irandom_range(0,yy_h)
		}
	}
	
	
	if global.rewind >= 211 && global.rewind <= 222
	{
		for(var i = 0; i < 16; i++)
		{
			global.rewind_effect_line_pos[i] -= 72
		}
	}
	
	if global.rewind = 222
	{
		global.rewind_effect_line_angle = 0
	
		var yy_h = camera_get_view_height(view_camera[0])
		
		
		for(var i = 0; i < 16; i++)
		{
			global.rewind_effect_line_pos[i] = irandom_range(0,yy_h)
		}
	}


	if (global.rewind <= 240 && global.rewind >= 91)
	{
		global.clock_alpha_1 += (1 - global.clock_alpha_1)*0.02
		global.clock_alpha_2 += (1 - global.clock_alpha_2)*0.02
	}

	if (global.rewind > 240)
	{
		global.clock_alpha_1 += (2.01 - global.clock_alpha_1)*0.02
		global.clock_alpha_2 += (-0.01 - global.clock_alpha_2)*0.05
	}
	
	if (global.rewind > 260)
	{
		audio_stop_sound(global.n_music_instance);
		global.w_alpha = 1.1;
		global.hp = 5;
		global.quake_effect = 0;
		global.rewind = 0;
		global.cannot_control = 0;
		obj_player.invincibility_cooltime = 90;
		obj_player.show_invincibility = 1;
		instance_destroy(hitbox_parents);
		instance_destroy(obj_savepoint);
		instance_destroy(square_misile);
		instance_destroy(obj_stage_clear);
		event_user(8);
	
		if global.fukurou_snow_effect != 0
		{
			for(var i = 0; i <= 64; i++)
			{
				var _shaking_circle = create_explo_circle(global.c_x+i*64,global.c_y+64,1+i*10,7200,0,0,0.18,2,0,0)
				_shaking_circle.direction = 90
			}
		}
	
		if global.turisumo_effect != 0
		{
			var tmp_xx = (room_width - 3584)*0.5
			var tmp_yy = (room_height + 2016)*0.5
			for(var i = 0; i <= 64; i++)
			{
				var _shaking_circle = create_explo_circle(tmp_xx+i*128,tmp_yy+128,1+i*5,7200,0,0,0.5,2,0,0)
				_shaking_circle.direction = 90
			}
		}
	
	
		if (audio_is_playing(happysegu) && global.start_point == 4945)
		{
			var tmp_c_x = (room_width - 3584)*0.5
			var tmp_c_w = (room_width + 3584)*0.5
			var tmp_c_y = (room_height - 2016)*0.5
			create_laser(tmp_c_x,tmp_c_y,1,1650,4,2,7,180)
			create_laser(tmp_c_w,tmp_c_y,1,1650,4,2,7,180)
			
			if (global.t_selected_difficulty == 0)
			{
				var tmp_ins = create_laser(room_width*0.5,room_height*0.5,1,320,4,2,1,0.7)
				tmp_ins.image_angle = 0;
				var tmp_ins = create_laser(room_width*0.5,room_height*0.5,1,320,4,2,1,0.7)
				tmp_ins.image_angle = 180;
			}
			var tmp_ins = create_laser(room_width*0.5,room_height*0.5,1,320,4,2,1,0.7)
			tmp_ins.image_angle = 90;
			var tmp_ins = create_laser(room_width*0.5,room_height*0.5,1,320,4,2,1,0.7)
			tmp_ins.image_angle = 270;
		}

	
		if global.respawn_point_xx != -4
		{
			obj_player.x = global.respawn_point_xx
			obj_player.y = global.respawn_point_yy
		}
		else
		{
			obj_player.x = room_width*0.5
			obj_player.y = room_height*0.5
		}
		global.n_music_instance = audio_play_sound(global.n_music_id,0,false,global.custom_map_volume_control*0.5*global.master_volume*global.bgm_volume*(global.mobile_mode*0.5+1),global.start_point/60)
		global.rewind_effect_line_angle = 0;
		

		audio_play_sound(cleared_sfx,0,false,global.master_volume*global.sfx_volume*4);
		global.w_alpha = 1
		obj_camera.alarm[0] = 2
		
		//곡 리스타트
		if (global.restart_stage == 1 || global.t_selected_difficulty == 0)
		{
			//맵 정보 초기화 (리와인드)
			event_user(12);
			
			audio_sound_set_track_position(global.n_music_instance,global.n_progress/60);
		}
		else
		{
			global.total_died_here ++;
			global.n_progress = global.start_point;
			global.check_died = 1;
		}
		
		if (global.play_custom_map == 1)
		{
			global.custom_map_timeline = false;
		}
		else
		{
			timeline_position = global.start_point;
			timeline_running = false;
			global.custom_map_timeline = false;
			var time__ = floor(global.music_sync_offset*3*60);
			if time__ > 0 && global.tutorial_now != 1
			{
				alarm[7] = time__;
			}
			else
			{
				global.custom_map_timeline = true;
				timeline_running = true;
			}
		}
	}
}