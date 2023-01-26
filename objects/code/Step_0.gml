/// @description Insert description here
// You can write your code in this editor




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
		timeline_loop = false
		timeline_running = true
		timeline_speed = 1
		
		show_debug_message("timeline")
		}
	}
	
	if global.n_progress < global.music_duration
	{
		if audio_is_playing(global.n_music_id)
		{
		global.n_progress ++
		}
	}
	else
	{
	global.n_progress = global.music_duration
	
		if !instance_exists(obj_savepoint)
		{
		var save_ = instance_create_depth(room_width,0,player.depth+1,obj_savepoint)
		save_.n_savepoint_position = 99999
		save_.n_color = c_black
		}
	}
}
else
{
progress_icon_alpha += (-0.01 - progress_icon_alpha)*0.1
progress_alpha += (-0.01 - progress_alpha)*0.1
progress_alpha_sec += (-0.01 - progress_alpha_sec)*0.1
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
	
	
	if global.rewind = 1 || global.rewind = 21 || global.rewind = 41
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
	global.w_alpha = 1.1
	global.hp = 5
	global.rewind = 0
	global.clock_alpha_1 = 0
	global.clock_alpha_2 = 0
	global.n_progress = global.start_point
	timeline_position = global.start_point
	global.cannot_control = 0
	instance_destroy(hitbox_parents)
	instance_destroy(obj_savepoint)
	
	if global.respawn_point_xx != -4
	{
	player.x = global.respawn_point_xx
	player.y = global.respawn_point_yy
	}
	else
	{
	player.x = xstart
	player.y = ystart
	}
	global.n_music_instance = audio_play_sound(global.n_music_id,0,false,0.5*global.master_volume*global.bgm_volume,global.start_point/60)
	global.rewind_effect_line_angle = 0
	audio_play_sound(cleared_sfx,0,false,global.master_volume*global.sfx_volume*4)
	}
}