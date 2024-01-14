/// @description Insert description here
// You can write your code in this editor


if (keyboard_check_released(vk_left) || keyboard_check_released(vk_right) || keyboard_check_released(vk_up) || keyboard_check_released(vk_down) || global.cannot_control == 1)
{
	global.hmove = 0;
	global.vmove = 0;
}




if (global.cannot_control == 0)
{
	if (keyboard_check(vk_up))
	{
		global.vmove = -1;
	}
	else if (keyboard_check(vk_down))
	{
		global.vmove = 1;
	}
	
	if (keyboard_check(vk_left))
	{
		global.hmove = -1;
	}
	else if (keyboard_check(vk_right))
	{
		global.hmove = 1;
	}
}




if (global.paused == 0 && global.timeline_stop != 1)
{
	if invincibility_cooltime > 0
	{
		invincibility_cooltime -= 2;
	}
	else
	{
		show_invincibility = 0
	}
	
	
	if (global.select_map != 0)
	{
		image_xscale = 0;
		image_yscale = 0;
		x = room_width*0.5;
		y = room_height*0.5;
	}
	else
	{
		if (image_xscale == 0)
		{
			show_player_pos = 241;
			player_pos_alpha = 1;
			
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
				effect_.image_angle = image_angle
				effect_.direction = point_direction(x,y,x+random_x,y+random_y)
				effect_.speed = 16
				effect_.image_blend = global.player_color
				effect_.image_alpha = 0.3
			}
		}
	
		x -= (abs(global.map_speed) > 28) ? 28*sign(global.map_speed) : global.map_speed;
		y += (abs(global.map_speed_y) > 28) ? 28*sign(global.map_speed_y) : global.map_speed_y
		x += global.hmove_speed;
		y += global.vmove_speed;
		
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
	
		if abs(global.hmove_speed) > 2 || abs(global.vmove_speed) > 2
		{
			check_stop = 0;
		}
		else
		{
			if (check_stop == 0)
			{
				check_stop = 1;
				repeat(irandom_range(8,10))
				{
					var random_x = irandom_range(-16,16)+global.hmove_speed*20;
					var random_y = irandom_range(-16,16)+global.vmove_speed*20;
					var effect_ = instance_create_depth(x+random_x,y+random_y,depth+1,movement_effect);
					effect_.image_xscale = 0.3;
					effect_.image_yscale = 0.3;
					effect_.direction = point_direction(x,y,x+random_x,y+random_y);
					effect_.speed = 16;
					effect_.image_angle = image_angle
					effect_.image_blend = global.player_color;
					effect_.image_alpha = 0.3;
				}
				
				if (global.hmove != 0)
				{
					image_xscale = 1-abs(sign(global.hmove_speed))*0.4;
					image_yscale = 1+abs(sign(global.hmove_speed))*0.7;
				}
				else if (global.vmove != 0)
				{
					image_xscale = 1+abs(sign(global.vmove_speed))*0.7;
					image_yscale = 1-abs(sign(global.hmove_speed))*0.4;
				}
				t_xscale = image_xscale;
				t_yscale = image_yscale;
			}
		}


		image_xscale += (t_xscale - image_xscale)*0.3;
		image_yscale += (t_yscale - image_yscale)*0.3;


		var xx = camera_get_view_x(view_camera[0]);
		var yy = camera_get_view_y(view_camera[0]);

		var xx_w = camera_get_view_width(view_camera[0]);
		var yy_h = camera_get_view_height(view_camera[0]);

		if (x < xx+16)
		{
			x = xx+16;
		}
		else if (x > xx+xx_w-16)
		{
			x = xx+xx_w-16;
		}

		if (y > yy+yy_h-16)
		{
			y = yy+yy_h-16;
		}
		else if (y < yy+16)
		{
			y = yy+16;
		}


		if abs(global.hmove_speed) <= 0.1
		{
			global.hmove_speed = 0;
		}

		if abs(global.vmove_speed) <= 0.1
		{
			global.vmove_speed = 0;
		}


		if (global.hmove == 0 && global.vmove == 0 && global.cannot_control == 0)
		{
			image_angle += (0 - image_angle)*0.3;
		}

		global.hmove_speed += (global.hmove*(14+global.dashing*62) - global.hmove_speed)*0.3
		global.vmove_speed += (global.vmove*(14+global.dashing*62) - global.vmove_speed)*0.3


		if (global.mobile_mode != 1)
		{
			if (global.hmove == 0 && global.vmove == -1)
			{
				image_angle = 360
			}
			else if (global.hmove == 1 && global.vmove == -1)
			{
				image_angle = -45-360
			}
			else if (global.hmove == 1 && global.vmove == 0)
			{
				image_angle = -90-360
			}
			else if (global.hmove == 1 && global.vmove == 1)
			{
				image_angle = -135-360
			}
			else if (global.hmove == 0 && global.vmove == 1)
			{
				image_angle = -180-360
			}
			else if (global.hmove == -1 && global.vmove == 1)
			{
				image_angle = 135+360
			}
			else if (global.hmove == -1 && global.vmove == 0)
			{
				image_angle = 90+360
			}
			else if (global.hmove == -1 && global.vmove == -1)
			{
				image_angle = 45+360
			}

			
			
			
		


			if (global.hmove == 0 && global.vmove == 0)
			{
				t_xscale = 1;
				t_yscale = 1;
			}
			else
			{
				t_xscale = 1-(0.2+global.dashing*0.5);
				t_yscale = 1+(0.2+global.dashing*0.5);
			}
		}
		else
		{
			image_angle += (sign(global.joystick_activated+1)*global.joystick_dir - image_angle)*0.2
			t_xscale = 1+sign(global.joystick_activated+1)*(0.2+global.dashing*0.5)
			t_yscale = 1-sign(global.joystick_activated+1)*(0.2+global.dashing*0.5)
		}


		if (abs(global.hmove)+abs(global.vmove) > 0 && global.dashing < 0.2)
		{
			var effect_ = instance_create_depth(x+irandom_range(-16,16),y+irandom_range(-16,16),depth+1,movement_effect)
			effect_.image_xscale = 0.3;
			effect_.image_yscale = 0.3;
			effect_.vspeed = -global.vmove_speed*1.2;
			effect_.hspeed = -global.hmove_speed*1.2;
			effect_.image_blend = global.player_color;
			effect_.image_angle = image_angle;
			effect_.image_alpha = 0.1;
		}


		//체력에 따른 이미지 설정
		obj_player.image_index = global.player_skin*7+fix_num_inside(5-global.hp,0,9999);

		if (global.dash_cooltime > 0)
		{
			global.dash_cooltime --;
			if (global.low_graphics == false)
			{
				var tmp_ins = instance_create_depth(x,y,depth+1,line_effect);
				tmp_ins.image_blend = global.player_color;
				tmp_ins.t_ins = saved_ef_ins_id;
				saved_ef_ins_id = tmp_ins;
			}
		}
		else
		{
			if (global.dash_cooltime == 0)
			{
				w_alpha = 1;
				global.dash_cooltime = -1;
			}
			saved_ef_ins_id = -4;
		}
		

		global.dashing += (-0.01 - global.dashing)*0.15
		if (global.dashing <= 0.1)
		{
			global.dashing = 0
		}

		if ((abs(global.hmove_speed)+abs(global.vmove_speed)) > 0 && global.cannot_control == 0 && global.dash_cooltime <= 0 && keyboard_check_pressed(vk_space))
		{
			event_user(0)
		}
		

	
		if (global.cannot_control == 1 && !instance_exists(obj_button) && !instance_exists(obj_stage_clear))
		{
			image_angle += 10*sign(hurt_hspeed)
		}
	}
}


if (global.tutorial_played <= 0 && (global.hmove_speed > 2 || global.vmove_speed > 2))
{
	if (global.checkpoint_text == "왼쪽 화면을 터치해 조이스틱으로 이동하기" || global.checkpoint_text == "방향키를 눌러 이동하기")
	{
		tutorial_mes ++;
		if (tutorial_mes > 120)
		{
			global.checkpoint_text = "'W' 아티팩트를 획득하여, 다음으로 넘어가기";
			tutorial_mes = 0;
		}
	}
}