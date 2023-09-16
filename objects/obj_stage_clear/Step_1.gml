/// @description Insert description here
// You can write your code in this editor
depth = obj_player.depth-320;

//레인보우 애니메이션
if (rainbow_ef > 0)
{
	rainbow_ef_angle -= 5;
	rainbow_ef_alpha += (1 - rainbow_ef_alpha)*0.1;
}
else
{
	if (rainbow_ef_alpha > 0)
	{
		rainbow_ef_alpha -= 0.05;
	}
}

	
//애니메이션
if (can_play_animation == -1)
{
	x = obj_player.x;
	obj_player.y += (room_height*0.5+256 - obj_player.y)*0.01;
	obj_camera.x += (room_width*0.5 - obj_camera.x)*0.05;
	obj_camera.y += (room_height*0.5 - obj_camera.y)*0.05;
	if (point_distance(obj_camera.x,obj_camera.y,room_width*0.5,room_height*0.5) < 128)
	{
		can_play_animation = 1;
	}
}

if (can_play_animation == 1)
{
	if (touched >= 1)
	{
		obj_camera.x += (room_width*0.5 - obj_camera.x)*0.3;
		obj_camera.y += (room_height*0.5 - obj_camera.y)*0.3;
		var tmp_dis = abs(y - obj_player.y)/960;
		tmp_dis = (sprite_index == spr_player && tmp_dis < 1) ? 1 : tmp_dis;
		image_xscale = tmp_dis;
		image_yscale = tmp_dis;
	}
	
	if (touched == 1)
	{
		if (play_unlock_animation <= 1)
		{
			obj_player.y = room_height*0.5;
		}
	
		if (play_unlock_animation == 1)
		{
			audio_play_sound(artifact_get,0,false,global.custom_map_volume_control*0.5*global.master_volume*global.bgm_volume*(global.mobile_mode*0.5+1));
		}
	
		if (play_unlock_animation < 300)
		{
			obj_player.x = room_width*0.5;
			obj_player.image_angle += (0 - obj_player.image_angle)*0.06
			x = room_width*0.5;
		}

	
		image_angle += (360 - image_angle)*0.03
		if (play_unlock_animation >= 1)
		{
			vspeed = 0;
			gravity = 0;
			play_unlock_animation ++;
		
			if (play_unlock_animation >= 682 && play_unlock_animation < 1200)
			{
				effect_rad += (160 - effect_rad)*0.1;
			}
			
			if (play_unlock_animation%45 == 0 && play_unlock_animation >= 682 && play_unlock_animation < 1100)
			{
				var tmp_ins = instance_create_depth(x,y,depth+1,obj_shine_ef)
				tmp_ins.target = id;
			}
		
			if (play_unlock_animation == 692)
			{
				var tmp_ins = instance_create_depth(x,y,depth+1,obj_shine_ef)
				tmp_ins.target = id;
				global.w_alpha = 1
			}
			
			if (play_unlock_animation == 1384)
			{
				rainbow_ef = 1;
				global.w_alpha = 1
				view_shake(3,3,3,0)
			}
			
			if (play_unlock_animation == 1700)
			{
				rainbow_ef = 1;
			}
		
			if (play_unlock_animation == 1200)
			{
				var _ef = instance_create_depth(x,y,depth+1,explosion_effect);
				_ef.image_xscale = 1;
				_ef.image_yscale = 1;
				_ef.t_scale = 2;
				_ef.image_blend = c_white;
				
				repeat(irandom_range(8,10))
				{
					var random_x = irandom_range(-16,16);
					var random_y = irandom_range(-16,16);
					var effect_ = instance_create_depth(x+random_x,y+random_y,depth+1,movement_effect);
					effect_.image_xscale = 0.3;
					effect_.image_yscale = 0.3;
					effect_.direction = point_direction(x,y,x+random_x,y+random_y);
					effect_.speed = 16;
					effect_.image_blend = c_white;
					effect_.alarm[1] = 1;
				}
				w_alpha = 10;
				sprite_index = spr_player;
				vspeed = 1;
				image_angle = 360;
				image_blend = c_white;
				global.w_alpha = 1.1;
			}
		
			if (play_unlock_animation >= 1200)
			{
				if (global.t_w_alpha > 0)
				{
					global.t_w_alpha -= 0.005;
				}
				w_alpha += (0 - w_alpha)*0.01;
				if (play_unlock_animation >= 1850)
				{
					w_alpha += (0 - w_alpha)*0.003;
				}
			}
			
			if (play_unlock_animation == 1850)
			{
				w_alpha = 1;
				var _ef = instance_create_depth(x,y,depth+1,explosion_effect);
				_ef.image_xscale = 1;
				_ef.image_yscale = 1;
				_ef.t_scale = 2;
				_ef.image_blend = c_white;
				
				repeat(irandom_range(8,10))
				{
					var random_x = irandom_range(-16,16);
					var random_y = irandom_range(-16,16);
					var effect_ = instance_create_depth(x+random_x,y+random_y,depth+1,movement_effect);
					effect_.image_xscale = 0.3;
					effect_.image_yscale = 0.3;
					effect_.direction = point_direction(x,y,x+random_x,y+random_y);
					effect_.speed = 16;
					effect_.image_blend = color_sec;
					effect_.alarm[1] = 1;
				}
			}
			
			if (play_unlock_animation == 1870)
			{
				var _ef = instance_create_depth(x,y,depth+1,explosion_effect);
				_ef.image_xscale = 1;
				_ef.image_yscale = 1;
				_ef.t_scale = 2;
				_ef.image_blend = c_white;
			}
			
			if (play_unlock_animation > 1910)
			{
				global.t_b_alpha += 0.01;
				if (global.b_alpha > 2)
				{
					audio_play_sound(show_rank_sfx,0,false,global.sfx_volume*global.master_volume);
					global.b_alpha = 2000;
					global.t_b_alpha = 0;
					play_unlock_animation = -1;
				}
			}
		
			if (play_unlock_animation < 9999)
			{
				if (play_unlock_animation <= 682)
				{
					obj_player.y += (room_height*0.5+256 - obj_player.y)*0.01;
					if (play_unlock_animation <= 600)
					{
						var random_x = irandom_range(-16,16);
						var random_y = irandom_range(-16,16);
						var effect_ = instance_create_depth(x+random_x,y+random_y,depth+1,movement_effect);
						effect_.image_xscale = 0.3;
						effect_.image_yscale = 0.3;
						effect_.direction = 270;
						effect_.speed = 16;
						effect_.image_blend = merge_color(color_sec,c_white,w_alpha);
						effect_.alarm[1] = 1;
					}
				}
				else
				{
					if (play_unlock_animation >= 1700)
					{
						obj_player.y += (room_height*0.5 - obj_player.y)*0.01;
						effect_rad += (0 - effect_rad)*0.0055;
						if (play_unlock_animation < 1800)
						{
							var random_x = irandom_range(-16,16);
							var random_y = irandom_range(-16,16);
							var effect_ = instance_create_depth(x+random_x,y+random_y,depth+1,movement_effect);
							effect_.image_xscale = 0.3;
							effect_.image_yscale = 0.3;
							effect_.direction = 270;
							effect_.speed = 16;
							effect_.image_blend = merge_color(color_sec,c_white,w_alpha);
							effect_.alarm[1] = 1;
						}
					}
					else
					{
						w_alpha += 0.009;
						rings_alpha -= 0.009;
						global.t_w_alpha += 0.002;
						obj_player.x = (room_width*0.5 - 128);
						obj_player.y += (room_height*0.5+512 - obj_player.y)*0.01;
					}
				}
			}
		}
		else
		{
			if (y > obj_player.y)
			{
				var _ef = instance_create_depth(room_width*0.5,room_height*0.5,depth+1,explosion_effect)
				_ef.image_xscale = 1
				_ef.image_yscale = 1
				_ef.t_scale = 2
				_ef.image_blend = global.player_color

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
			
			
				
				view_shake(0.1,10,0,2);
				touched = 2;
				image_alpha = 0;
				global.show_rank = 2;
			}
		
		

			if (image_angle > 190 && image_angle <= 200)
			{
				var _ef = instance_create_depth(room_width*0.5,room_height*0.5,depth+1,explosion_effect)
				_ef.image_xscale = 1
				_ef.image_yscale = 1
				_ef.t_scale = 2
				_ef.image_blend = c_white

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
			}
			
			
			if (image_angle > 300)
			{
				global.t_w_alpha += 0.01;
				w_alpha += 0.1;
				obj_player.w_alpha += 0.1;
			}
		}
	}
	
	if (touched == 2)
	{
		var _ef = instance_create_depth(room_width*0.5,room_height*0.5,depth+1,explosion_effect)
		_ef.image_xscale = 1
		_ef.image_yscale = 1
		_ef.t_scale = 2
		_ef.image_blend = global.player_color

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
		
		global.t_w_alpha = 5000
		w_alpha = 10
		touched = 3
		alarm[1] = 30
	}
}