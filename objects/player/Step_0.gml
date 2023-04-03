/// @description Insert description here
// You can write your code in this editor


if global.select_map != 0
{
	image_xscale = 0
	image_yscale = 0
	x = room_width*0.5
	y = room_height*0.5
}
else
{
	if image_xscale = 0
	{
		audio_play_sound(cleared_sfx,0,false,global.master_volume*global.sfx_volume*4)

		var _ef = instance_create_depth(x,y,depth+1,explosion_effect)
		_ef.image_xscale = 1
		_ef.image_yscale = 1
		_ef.t_scale = 2
		_ef.image_blend = global.player_color
	
		repeat(irandom_range(8,10))
		{
			var random_x = irandom_range(-16,16)
			var random_y = irandom_range(-16,16)
			var effect_ = instance_create_depth(x+random_x,y+random_y,depth+1,movement_effect)
			effect_.image_xscale = 0.3
			effect_.image_yscale = 0.3
			effect_.direction = point_direction(x,y,x+random_x,y+random_y)
			effect_.speed = 16
			effect_.image_blend = global.player_color
		}
	}
	
	x -= global.map_speed

	if global.map_speed_y > 18
	{
		y += 18
	}
	else
	{
		y += global.map_speed_y
	}

	if global.hp <= 0 && global.rewind <= 0
	{
		global.rewind = 1
		global.w_alpha = 1.1
		global.cannot_control = 1
		global.hmove_speed = 0
		global.vmove_speed = 0
		hurt = -4
		hurt_coolitme = 0
		died_xx = x
		died_yy = y



		var yy_h = camera_get_view_height(view_camera[0])
		for(var i = 0; i < 16; i++)
		{
			global.rewind_effect_line_pos[i] = irandom_range(0,yy_h)
		}
	}



	w_alpha += (-0.01 - w_alpha)*0.1


	image_xscale += (t_xscale - image_xscale)*0.3
	image_yscale += (t_yscale - image_yscale)*0.3


	var xx = camera_get_view_x(view_camera[0])
	var yy = camera_get_view_y(view_camera[0])

	var xx_w = camera_get_view_width(view_camera[0])
	var yy_h = camera_get_view_height(view_camera[0])

	if x < xx+16
	{
		x = xx+16
	}

	if x > xx+xx_w-16
	{
		x = xx+xx_w-16
	}

	if y > yy+yy_h-16
	{
		y = yy+yy_h-16
	}

	if y < yy+16
	{
		y = yy+16
	}


	if abs(global.hmove_speed) <= 0.1
	{
		global.hmove_speed = 0
	}

	if abs(global.vmove_speed) <= 0.1
	{
		global.vmove_speed = 0
	}

	x += global.hmove_speed
	y += global.vmove_speed


	var random_dash = 0
	if (global.hmove = 0 && global.vmove = 0)
	{
		random_dash = global.dashing
		image_angle += (0 - image_angle)*0.3
	}

	global.hmove_speed += (global.hmove*(14+global.dashing*62)+random_dash*64 - global.hmove_speed)*0.3
	global.vmove_speed += (global.vmove*(14+global.dashing*62) - global.vmove_speed)*0.3

	if global.mobile_mode != 1
	{
		var ff_angle = 180
		if global.player_skin = 1
		{
			ff_angle = 360
		}
	
		if abs(global.hmove) = 1 && global.vmove = 0
		{
			image_angle = ff_angle
		}

		if global.hmove = 0 && abs(global.vmove) = 1
		{
			image_angle = -ff_angle
		}
		
		if global.hmove != 0 && global.vmove != 0
		{
			image_angle = 45+90*sign(global.vmove+global.hmove)
			t_xscale = 1+abs(global.hmove)*(0.2+global.dashing*0.5)
			t_yscale = 1-abs(global.hmove)*(0.2+global.dashing*0.5)
		}
		else
		{
			t_xscale = 1+abs(global.hmove)*(0.2+global.dashing*0.5)-abs(global.vmove)*(0.2+global.dashing*0.5)
			t_yscale = 1-abs(global.hmove)*(0.2+global.dashing*0.5)+abs(global.vmove)*(0.2+global.dashing*0.5)
		}
	}
	else
	{
		image_angle += (sign(global.joystick_activated+1)*global.joystick_dir - image_angle)*0.2
		t_xscale = 1+sign(global.joystick_activated+1)*(0.2+global.dashing*0.5)
		t_yscale = 1-sign(global.joystick_activated+1)*(0.2+global.dashing*0.5)
	}



	if global.cannot_control = 0 && keyboard_check(vk_left)
	{
		global.hmove = -1
	}

	if global.cannot_control = 0 && keyboard_check(vk_right)
	{
		global.hmove = 1
	}




	if global.cannot_control = 0 && keyboard_check(vk_up)
	{
		global.vmove = -1
	}

	if global.cannot_control = 0 && keyboard_check(vk_down)
	{
		global.vmove = 1
	}



	if abs(global.hmove)+abs(global.vmove) > 0 && global.dashing < 0.2
	{
		var effect_ = instance_create_depth(x+irandom_range(-16,16),y+irandom_range(-16,16),depth+1,movement_effect)
		effect_.image_xscale = 0.3
		effect_.image_yscale = 0.3
		effect_.vspeed = -global.vmove_speed*1.2
		effect_.hspeed = -global.hmove_speed*1.2
		effect_.image_blend = global.player_color
	}



	if keyboard_check_released(vk_left) || keyboard_check_released(vk_right) || keyboard_check_released(vk_up) || keyboard_check_released(vk_down) || global.cannot_control = 1
	{
		global.hmove = 0
		global.vmove = 0
	}




	//체력에 따른 이미지 설정
	player.image_index = global.player_skin*7+(5-global.hp)

	if global.dash_cooltime > 0
	{
		global.dash_cooltime --
	}

	global.dashing += (-0.01 - global.dashing)*0.15
	if global.dashing <= 0.1
	{
		global.dashing = 0
	}

	if global.cannot_control = 0 && global.dash_cooltime <= 0 && keyboard_check_pressed(vk_space)
	{
		event_user(0)
	}
}