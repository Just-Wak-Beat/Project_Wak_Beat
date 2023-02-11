/// @description Insert description here
// You can write your code in this editor

//캐릭터 변경
if global.b_player_skin != global.player_skin
{
player.image_index = global.player_skin*7+(5-global.hp)
	global.player_color = $FF4AB539
	if global.player_skin = 1
	{
	global.player_color = $FF60006F
	}
	if global.player_skin = 2
	{
	global.player_color = $FF969EA3
	}
	if global.player_skin = 3
	{
	global.player_color = $FFFFC065
	}
	if global.player_skin = 4
	{
	global.player_color = $FFFF9761
	}
	if global.player_skin = 5
	{
	global.player_color = $FF8812D5
	}
	if global.player_skin = 6
	{
	global.player_color = $FF62E0F6
	}
global.b_player_skin = global.player_skin
}


global.select_map += (global.t_select_map - global.select_map)*0.1

if global.n_music_title = "왁트모르즈비"
{
global.hp = 5
global.n_playing_tutorial = 1
}
else
{
global.checkpoint_text = "중간 사베(save) 도착!"
}


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
	
	if progress_alpha > 0.98 && global.n_music_id = -4 && global.n_progress = 0
	{
	global.start_point = 0
	global.hp = 5
	global.n_music_id = asset_get_index(global.n_music_name)
	global.n_music_instance = audio_play_sound(global.n_music_id,0,false,0.5*global.master_volume*global.bgm_volume)
	
	var _timeline_index_ = asset_get_index(string(global.n_music_name)+"_timeline")
		if timeline_exists(_timeline_index_)
		{
		timeline_index = _timeline_index_
		timeline_position = 0
		timeline_loop = false
		timeline_running = true
		timeline_speed = 1
		
		show_debug_message("timeline")
		}
	}
	
	if global.n_progress < global.music_duration
	{
		if (audio_is_playing(global.n_music_id) || global.n_progress > 2000) && global.hp > 0
		{
		global.n_progress ++
		}
	}
	else
	{
	global.n_progress = global.music_duration
	
		if !instance_exists(obj_savepoint)
		{
			if abs(global.map_speed_y) > 0
			{
			var save_ = instance_create_depth(0,0,player.depth+1,obj_savepoint)
			save_.n_savepoint_position = 99999
			save_.n_color = c_black
			save_.image_angle = 90
			}
			else
			{
			var save_ = instance_create_depth(room_width,0,player.depth+1,obj_savepoint)
			save_.n_savepoint_position = 99999
			save_.n_color = c_black
			}
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
	var time_sec = floor(global.stage_map_duration[n_stage]/60)
	var n_time_sec = floor(global.n_progress/60)
	var album_id = "album"+string(n_stage+1)
		if n_stage+1 > sprite_get_number(spr_album)-2
		{
		album_id = "album0"
		}
	
	np_setpresence_more("","", false);
	np_setpresence(string(convert_sec_to_clocktime(n_time_sec))+"/"+string(convert_sec_to_clocktime(time_sec)),string(global.stage_map_name[n_stage]), string(album_id), "type"+string(global.artifact_type));
	}
discord_presence_update ++
	
	if global.n_progress >= global.music_duration
	{
	discord_presence_update = 0
	}
}


global.w_alpha += (-0.01 - global.w_alpha)*0.1



//되감기 이펙트
if global.rewind > 0
{
	if global.rewind = 1
	{
	audio_play_sound(wakgood_hurt,0,false,global.master_volume*global.sfx_volume)
	audio_play_sound(dead_sfx,0,false,global.master_volume*global.sfx_volume*0.2)
	audio_stop_sound(global.n_music_instance)
	}
	
	
	if global.rewind = 91
	{
	audio_play_sound(rewinding_sfx,0,false,global.master_volume*global.sfx_volume)
	}
	
	
	if global.low_graphics = false && (global.rewind = 1 || global.rewind = 21 || global.rewind = 41)
	{
		for(var i = 0; i < 360; i += 45)
		{
		var ef__ = instance_create_depth(player.died_xx,player.died_yy,depth-1,dead_explosion)
		ef__.direction = i;
		ef__.speed = 24;
		ef__.image_xscale = 1.5
		}
	}
global.rewind ++
		
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
	global.total_died_here ++
	global.w_alpha = 1.1
	global.hp = 5
	global.rewind = 0
	global.clock_alpha_1 = 0
	global.clock_alpha_2 = 0
	global.n_progress = global.start_point
	timeline_position = global.start_point
	global.cannot_control = 0
	player.invincibility_cooltime = 90
	player.show_invincibility = 1
	instance_destroy(hitbox_parents)
	instance_destroy(obj_savepoint)
	instance_destroy(square_misile)
	
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
		for(var i = 0; i <= 64; i++)
		{
		var _shaking_circle = create_explo_circle(global.c_x+i*128,global.c_h+128,1+i*5,7200,0,0,0.5,2,0,0)
		_shaking_circle.direction = 90
		}
	}
	
	if global.respawn_point_xx != -4
	{
	player.x = global.respawn_point_xx
	player.y = global.respawn_point_yy
	}
	else
	{
	player.x = room_width*0.5
	player.y = room_height*0.5
	}
	global.n_music_instance = audio_play_sound(global.n_music_id,0,false,0.5*global.master_volume*global.bgm_volume,global.start_point/60)
	global.rewind_effect_line_angle = 0
	audio_play_sound(cleared_sfx,0,false,global.master_volume*global.sfx_volume*4)
	}
}