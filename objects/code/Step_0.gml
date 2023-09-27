/// @description Insert description here
// You can write your code in this editor

//인게임중에 설정 열기
if (global.can_change_music_list == 1 && global.sync_setting == 0 && global.paused == 0 && (global.n_progress > 0 || music_title_alpha > 0))
{
	if (keyboard_check_pressed(vk_escape) || keyboard_check_pressed(vk_backspace))
	{
		event_user(2)
	}
}

if (gamestart == 1.1)
{
	if (keyboard_check_pressed(vk_escape) || keyboard_check_pressed(vk_backspace))
	{
		gamestart = 0;
		global.t_select_difficulty = 0;
		audio_play_sound(cleared_sfx,0,false,global.master_volume*global.sfx_volume*4);
		window_set_cursor(cr_none);
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
		
		if (global.level == 1 && global.guide_showed[0] == 0)
		{
			show_guide("파트너 해금!");
			global.guide_showed[0] = 1;
		}
		
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
		for(var i = 0; i < 4; i++)
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
		
			if is_clicked_scroll
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
		global.n_playing_tutorial = 1
	}
	else
	{
		global.checkpoint_text = "중간 사베(save) 도착!"
	}


	if (global.show_music_title > 0 && global.paused == 0)
	{
		global.show_music_title ++

		if global.show_music_title < 240
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
	
		if (global.tutorial_played >= 0)
		{
			if (progress_alpha > 0.98)
			{
				if global.n_music_id = -4 && global.n_progress = 0
				{
					saved_n_stage = n_stage+2
					global.start_point = 0
					global.cannot_control = 0
					var _audio_asset = (global.n_map_list != 2) ? asset_get_index(global.n_music_name) : global.custom_audio_asset[n_stage];
					global.n_music_id = _audio_asset
					global.n_music_instance = audio_play_sound(global.n_music_id,0,false,global.custom_map_volume_control*0.5*global.master_volume*global.bgm_volume*(global.mobile_mode*0.5+1))
	
					var _timeline_index_ = asset_get_index(string(global.n_music_name)+"_timeline")
					if timeline_exists(_timeline_index_)
					{
						window_set_cursor(cr_none)
						timeline_index = _timeline_index_
						timeline_position = 0
						timeline_loop = false
						var time__ = floor(global.music_sync_offset*3*60)
						if time__ > 0 && global.tutorial_now = 0
						{
							alarm[7] = time__
						}
						else
						{
							timeline_running = true
						}
						timeline_speed = 1+(global.t_selected_difficulty == -1 ? 0.12 : 0)
		
						show_debug_message("timeline")
					}
				}
			}
	
			if (global.n_progress < global.music_duration)
			{
				if global.paused == 0 && (audio_is_playing(global.n_music_id) || global.n_progress > 2000) && global.hp > 0
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
				}
	
	
				if !instance_exists(obj_savepoint) && !instance_exists(obj_stage_clear)
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
		else //첫 튜토리얼 안 했을경우
		{
			if (!instance_exists(obj_stage_clear) && global.paused == 0)
			{
				instance_create_depth(global.c_w+128,room_height*0.5,obj_player.depth-1,obj_stage_clear)
				if global.mobile_mode = 1
				{
					global.checkpoint_text = "왼쪽 화면을 터치해 조이스틱으로 이동하기"
				}
				else
				{
					global.checkpoint_text = "방향키를 눌러 이동하기"
				}
				global.t_bg_color = 1;
				global.t_bg_color_alpha = 1;
				global.artifact_type = 0;
				global.tutorial_now = 1;
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
			var n_time_sec = floor(global.n_progress/60)
			var album_id = "album"+string(global.n_map_id+1)
			if global.n_map_id+1 > sprite_get_number(spr_album)-2
			{
				album_id = "album0"
			}
		
			if global.n_map_list = 2
			{
				album_id = "custom_album"
			}
	
			np_setpresence_more("","", false);
			if (global.paused == 0)
			{
				np_setpresence("["+string(convert_sec_to_clocktime(n_time_sec))+"/"+string(convert_sec_to_clocktime(time_sec))+"]",string(global.stage_map_name[global.n_map_id]), string(album_id), "type"+string(global.artifact_type));
			}
			else
			{
				np_setpresence("[Paused]",string(global.stage_map_name[global.n_map_id]), string(album_id), "type"+string(global.artifact_type));
			}
		}
		discord_presence_update ++
	
		if global.n_progress >= global.music_duration+floor(global.music_sync_offset*3*60)
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
		timeline_running = false
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
	
	
	if (global.rewind = 1 || global.rewind = 21 || global.rewind = 41)
	{
		for(var i = 0; i < 360; i += 45)
		{
			var ef__ = instance_create_depth(obj_player.died_xx,obj_player.died_yy,depth-1,dead_explosion)
			ef__.direction = i;
			ef__.speed = 24;
			ef__.image_xscale = 1
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


	if global.rewind <= 240 && global.rewind >= 91
	{
		global.clock_alpha_1 += (1 - global.clock_alpha_1)*0.02
		global.clock_alpha_2 += (1 - global.clock_alpha_2)*0.02
	}

	if global.rewind > 240
	{
		global.clock_alpha_1 += (2.01 - global.clock_alpha_1)*0.02
		global.clock_alpha_2 += (-0.01 - global.clock_alpha_2)*0.05
	}
	
	if global.rewind > 260
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
		global.rewind_effect_line_angle = 0
		
		if (global.t_selected_difficulty == 0)
		{
			global.total_died_here = 0
			global.crossed_obstacle_num = 0
		}
		audio_play_sound(cleared_sfx,0,false,global.master_volume*global.sfx_volume*4);
		
		
		//곡 리스타트
		if (global.restart_stage == 1)
		{
			global.map_color = global.stage_map_color[global.n_map_id];
			global.start_point = 0;
			global.restart_stage = 0;
			global.respawn_point_xx = room_width*0.5;
			global.respawn_point_yy = room_height*0.5;
			global.total_died_here = 0;
			global.check_died = 0;
			global.n_progress = 0;
			global.n_camera_zoom = 1;
			global.dashed = 0
			obj_camera.v_x = obj_camera.tv_x;
			obj_camera.v_y = obj_camera.tv_y;
			audio_sound_set_track_position(global.n_music_instance,global.n_progress/60);
		}
		else
		{
			global.total_died_here ++;
			global.n_progress = global.start_point;
			global.check_died = 1;
		}
		timeline_position = global.start_point;
		timeline_running = false;
		var time__ = floor(global.music_sync_offset*3*60);
		if time__ > 0 && global.tutorial_now = 0
		{
			alarm[7] = time__;
		}
		else
		{
			timeline_running = true;
		}
	}
}