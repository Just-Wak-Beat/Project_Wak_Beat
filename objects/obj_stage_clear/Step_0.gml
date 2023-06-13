/// @description Insert description here
// You can write your code in this editor
image_index = global.artifact_type
	if global.artifact_type = 1
	{
		image_blend = #b879ef
		color_sec = #b79aef
	}
	if global.artifact_type = 2
	{
		image_blend = #aaa6a2
		color_sec = #77716a
	}
	if global.artifact_type = 3
	{
		image_blend = #84acdf
		color_sec = #6589b9
	}
	if global.artifact_type = 4
	{
		image_blend = #3b3157
		color_sec = #594a81
	}
	if global.artifact_type = 5
	{
		image_blend = #604055
		color_sec = #9b647b
	}
	if global.artifact_type = 6
	{
		image_blend = #e38e2a
		color_sec = #fe6f56
	}
	if global.artifact_type = 7
	{
		image_blend = #01bfa3
		color_sec = #44d2ac
	}



spin_rad += 10


	for(var i = 6; i < 32; i++)
	{
		xx[i] += (lengthdir_x(66,spin_rad*0.5) - xx[i])*0.02*i
		yy[i] += (lengthdir_y(66,spin_rad*0.5) - yy[i])*0.02*i

		xx[i] = floor(xx[i])
		yy[i] = floor(yy[i])


		xx2[i] += (lengthdir_x(82,-spin_rad) - xx2[i])*0.02*i
		yy2[i] += (lengthdir_y(82,-spin_rad) - yy2[i])*0.02*i

		xx2[i] = floor(xx2[i])
		yy2[i] = floor(yy2[i])



		xx3[i] += (lengthdir_x(66,spin_rad*0.5+180) - xx3[i])*0.02*i
		yy3[i] += (lengthdir_y(66,spin_rad*0.5+180) - yy3[i])*0.02*i

		xx3[i] = floor(xx3[i])
		yy3[i] = floor(yy3[i])
	}



timer ++

	if (touched == 0 && timer > (global.bpm/3600)*2000)
	{
		t_speed -= 0.001
	}

	if outside_timer > 360
	{
		instance_create_depth(global.c_w+128,irandom_range(global.c_y,global.c_h),player.depth-1,obj_stage_clear)
		instance_destroy()
	}


var xx__ = camera_get_view_x(view_camera[0])
var yy__ = camera_get_view_y(view_camera[0])

var xx_w__ = camera_get_view_width(view_camera[0])
var yy_h__ = camera_get_view_height(view_camera[0])

	if x < xx__+16 || x > xx__+xx_w__-16 || y > yy__+yy_h__-16 || y < yy__+16
	{
		outside_timer ++
	}
	else
	{
		if outside_timer > 0
		{
			outside_timer --
		}
	}

	if (touched == 0)
	{
		if (timer > (3600/global.bpm))
		{
			timer -= (3600/global.bpm)
			if t_speed != 10
			{
				image_angle = 360*choose(-1,1)
				t_speed = 10
				w_alpha = 1
				if point_distance(x,y,room_width*0.5,room_height*0.5) > 600
				{
					t_angle = point_direction(x,y,room_width*0.5,room_height*0.5)
				}
				else
				{
					t_angle = irandom_range(0,359)
				}
			}
			image_xscale = 0.25
			image_yscale = 0.25
		}


		speed += (t_speed - speed)*0.01
		direction += (t_angle - direction)*0.01
		image_xscale += (0.2 - image_xscale)*0.1
		image_yscale += (0.2 - image_yscale)*0.1
		image_angle += (0 - image_angle)*0.03
	}
	w_alpha += (0 - w_alpha)*0.01
	



	if (touched == 0 && global.hp > 0 && place_meeting(x,y,player))
	{
		global.savepoint_text_t_alpha = -0.01
		var _ef = instance_create_depth(room_width*0.5,room_height*0.5,depth+1,explosion_effect)
		_ef.image_xscale = 1
		_ef.image_yscale = 1
		_ef.t_scale = 2
		_ef.image_blend = global.player_color
		speed = 0
		t_speed = 0
		gravity = 0.6
		vspeed = -32
		image_angle = 0

		player.x = room_width*0.5;
		player.y = room_height*0.5;
		x = room_width*0.5;
		y = room_height*0.5;
		obj_camera.x = room_width*0.5+obj_camera.x-player.x
		obj_camera.y = room_height*0.5+obj_camera.y-player.y

		repeat(irandom_range(8,10))
		{
			var random_x = irandom_range(-16,16)
			var random_y = irandom_range(-16,16)
			var effect_ = instance_create_depth(room_width*0.5+random_x,room_height*0.5+random_y,depth+1,movement_effect)
			effect_.image_xscale = 0.3
			effect_.image_yscale = 0.3
			effect_.direction = point_direction(room_width*0.5,room_height*0.5,room_width*0.5+random_x,room_height*0.5+random_y)
			effect_.speed = 16
			effect_.image_blend = color_sec
		}
	
		if global.n_playing_tutorial = 1
		{
			global.tutorial_n_stage++
	
			if global.tutorial_n_stage = 1
			{
				global.background_color = $FF161510
				audio_play_sound(cleared_sfx,0,false,global.master_volume*global.sfx_volume*4)
				global.w_alpha = 1
				instance_destroy()
			}
			else if global.tutorial_n_stage = 2
			{
				global.background_color = $FF331800
				audio_play_sound(cleared_sfx,0,false,global.master_volume*global.sfx_volume*4)
				global.w_alpha = 1
				instance_destroy()
			}
			else if global.tutorial_n_stage = 3
			{
				global.background_color = $FF1E2620
				audio_play_sound(cleared_sfx,0,false,global.master_volume*global.sfx_volume*4)
				global.w_alpha = 1
				instance_destroy()
			}
			else
			{
				event_user(0)
			}
		}
		else
		{
			event_user(0)
		}
	
	}
