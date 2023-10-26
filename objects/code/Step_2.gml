/// @description Insert description here
// You can write your code in this editor

	//일시정지 효과 해제
	if (global.paused == -1)
	{
		if (global.timeline_stop != 1)
		{
			timeline_running = true
			global.n_music_instance = audio_play_sound(global.n_music_id,0,false,global.custom_map_volume_control*0.5*global.master_volume*global.bgm_volume*(global.mobile_mode*0.5+1),global.start_point/60)
			audio_sound_set_track_position(global.n_music_instance,global.n_progress/60);
		}
		instance_activate_all()
		global.paused = 0;
	}

	if (global.sync_setting == 1 && gamestart != 0 && gamestart != 1)
	{
		if (global.paused == 0)
		{
			timeline_running = false;
			global.paused = 1;
			audio_stop_sound(global.n_music_instance);
			instance_deactivate_object(hitbox_parents);
			instance_deactivate_object(obj_stage_clear);
			instance_deactivate_object(obj_savepoint);
			instance_deactivate_object(explosion_effect);
			instance_deactivate_object(dead_explosion);
			instance_deactivate_object(movement_effect);
			instance_deactivate_object(circle_effect);
			instance_deactivate_object(obj_shine_ef);
			instance_deactivate_object(changing_hitbox_color);
			instance_deactivate_object(changing_bg_color);
		}
	}


	global.new_song_scroll += (global.t_new_song_scroll - global.new_song_scroll)*0.1
	
	if (global.paused == 0 && global.rewind <= 0)
	{
		if global.fukurou_snow_effect > 0
		{
			global.fukurou_snow_effect++
			if global.fukurou_snow_effect > 10
			{
				var __circle_ = create_explo_circle(irandom_range(global.c_x+global.t_map_speed*0.5,global.c_w+global.t_map_speed*10),global.c_y,irandom_range(1,30),7200,0,0,(audio_is_playing(winter_spring) != true) ? 0.05 : 0.15,2,4,0)
				if audio_is_playing(winter_spring)
				{
					__circle_.sprite_index = spr_snow
				}
				global.fukurou_snow_effect = 1
			}
		}




		if global.turisumo_effect_3 > 0
		{
			turisumo_bpm_timer ++
			if turisumo_bpm_timer >= (3600/global.bpm)
			{
				turisumo_road_sign_delay ++
				var attack_ef = instance_create_depth(irandom_range(global.c_x,global.c_w),global.c_y,depth+1,hitbox_2)
				attack_ef.direction = 270
				attack_ef.speed = 12
				attack_ef.keep_spin_angle = 2
				attack_ef.image_xscale = 0.4
				attack_ef.image_yscale = 0.4
				attack_ef.w_alpha = 10
	
				var random_val = percentage_k(global.map_speed_y)
				if random_val = 1
				{
					var scale = irandom_range(10,5)/10
					var _misile_ = create_square_misile(irandom_range(global.c_x,global.c_w),global.c_y-global.map_speed_y*3,5,20/scale,0,0,scale)
					_misile_.direction = 270
					_misile_.image_angle = 270
					_misile_.speed = (64+4)*scale/5
				}
	
				if global.turisumo_effect_2 > 0 && turisumo_road_sign_delay%2 = 0
				{
					var scale = 0.5
					var _misile_ = create_square_misile(room_width*0.5,global.c_y-global.map_speed_y*3,5,20/scale,0,0,scale)
					_misile_.direction = 270
					_misile_.image_angle = 270
					_misile_.speed = (64+4)*scale/5
				}
	
	
				turisumo_bpm_timer -= (3600/global.bpm)
			}
		}


		if global.turisumo_effect > 0
		{
			global.turisumo_effect++
			if global.turisumo_effect > 5
			{
				var attack_ef = instance_create_depth(irandom_range(global.c_x,global.c_w),global.c_h,obj_player.depth-10,hitbox_2)
				attack_ef.vspeed = irandom_range(-50,-20)/2
				attack_ef.gravity = 1
				attack_ef.keep_spin_angle = irandom_range(-2,2)
				attack_ef.image_xscale = 0.4
				attack_ef.image_yscale = 0.4
				attack_ef.w_alpha = 10
				global.turisumo_effect = 1
			}
		}

		global.turisumo_effect_scale += (global.t_turisumo_effect_scale - global.turisumo_effect_scale)*0.01
		if global.turisumo_effect_2 > 0
		{
			global.turisumo_effect_2++
			if global.turisumo_effect_2 > 120/global.map_speed_y
			{
				var attack_ef = instance_create_depth(global.c_x,global.c_y,obj_player.depth-10,hitbox_12)
				attack_ef.t_scale = 0.25
				attack_ef.t_x = global.c_x+256+global.turisumo_effect_scale
				attack_ef.t_y = global.c_y
				attack_ef.keep_spin_angle = 15
				attack_ef.w_alpha = 10
	
	
				var attack_ef = instance_create_depth(global.c_w,global.c_y,obj_player.depth-10,hitbox_12)
				attack_ef.t_scale = 0.25
				attack_ef.t_x = global.c_w-256-global.turisumo_effect_scale
				attack_ef.t_y = global.c_y
				attack_ef.keep_spin_angle = 15
				attack_ef.w_alpha = 10
				global.turisumo_effect_2 = 1
			}
		}
		
		
		if global.bamguy_effect > 0
		{
			master_bpm_timer ++
			if master_bpm_timer >= (3600/global.bpm)*2+global.music_sync_offset*3*60
			{
				for(var i = 0; i <= 9; i++)
				{
					var ins_spike = create_cylinder(global.c_x,global.c_y-128+i*256,code.depth,0.5,1,32,180,270,true)
					ins_spike.sprite_index = spr_triangle
				}
				view_shake(6,6,0,1)
				master_bpm_timer -= (3600/global.bpm)*2+global.music_sync_offset*3*60
			}
		}




		if global.phony_effect != 0 && instance_exists(hitbox_11)
		{
			hitbox_11.t_angle += 2
			var _xx_ = hitbox_11.x+lengthdir_x(phony_y,hitbox_11.image_angle)
			var _yy_ = hitbox_11.y+lengthdir_y(phony_y,hitbox_11.image_angle)

			if phony_y_timer%5 = 0
			{
				for(var i = 0; i < 4; i++)
				{
					var attack_ef = instance_create_depth(_xx_,_yy_,depth+1,hitbox_2)
					attack_ef.direction = hitbox_11.image_angle+i*90
					attack_ef.speed = 20
					attack_ef.keep_spin_angle = 2
					attack_ef.image_xscale = 0.4
					attack_ef.image_yscale = 0.4
					attack_ef.w_alpha = 10
				}
			}


			phony_y_timer ++
			phony_y += phony_t_y;

			if phony_y_timer > 60
			{
				phony_t_y *= -1
				phony_y_timer = 0
			}
		}


		if global.quake_effect = 1
		{
			view_shake(0.1,1.5,0.1,0)


			if ((instance_exists(hitbox_7) && instance_exists(hitbox_3)) || global.n_progress >= 4100)
			{
				var target_ins = -4
				with(hitbox_3)
				{
					if (object_index == hitbox_3 && image_alpha >= 1)
					{
						target_ins = id
					}
				}
			
				if (global.n_progress >= 4100)
				{
					target_ins = wakgood_shouting
				}
			
				if (target_ins != -4)
				{
					global.yoong_laser_dir = target_ins.image_angle+90
					global.yoong_laser_dir2 = target_ins.image_angle+90
			
			
					if (cre_now1 == 1 || cre_now2 == 1) && instance_number(explosion_effect) < 32 
					{
						for(var i = 2000; i > 1000; i -= 10)
						{
							var dir_xx = wakgood_shouting.x+lengthdir_x(i,global.yoong_laser_dir)
							var dir_yy = wakgood_shouting.y+lengthdir_y(i,global.yoong_laser_dir)
			
							if (dir_xx <= global.c_w && dir_xx >= global.c_x && dir_yy >= global.c_y && dir_yy <= global.c_w)
							{
								var _ef = instance_create_depth(dir_xx+irandom_range(-520,520),dir_yy+irandom_range(-520,520),depth+1,explosion_effect)
								_ef.image_xscale = 1
								_ef.image_yscale = 1
								_ef.t_scale = irandom_range(10,60)/10
								_ef.image_blend = c_white
					
								break;
							}
						}
					}
				}
			
				if (cre_now1 == 1)
				{
					var attack_ef = instance_create_depth(wakgood_shouting.x+irandom_range(-64,64),wakgood_shouting.y+irandom_range(-64,64),depth+1,hitbox_2)
					attack_ef.direction = global.yoong_laser_dir+irandom_range(-50,50)
					attack_ef.speed = irandom_range(40,64)
					attack_ef.keep_spin_angle = 2
					attack_ef.image_xscale = 0.4
					attack_ef.image_yscale = 0.4
					attack_ef.w_alpha = 10
				}
		
				if (cre_now2 == 1)
				{
					var attack_ef = instance_create_depth(wakgood_shouting.x+irandom_range(-64,64),wakgood_shouting.y+irandom_range(-64,64),depth+1,hitbox_2)
					attack_ef.direction = global.yoong_laser_dir2+irandom_range(-50,50)
					attack_ef.speed = irandom_range(40,64)
					attack_ef.keep_spin_angle = 2
					attack_ef.image_xscale = 0.4
					attack_ef.image_yscale = 0.4
					attack_ef.w_alpha = 10
				}
			
			}
		}



		if global.alzar_effect != 0
		{
			if instance_exists(spotlight1) && instance_exists(spotlight2)
			{
				spotlight1.t_angle += global.alzar_effect
				spotlight2.t_angle += -global.alzar_effect
				alzar_timer ++
	
				var angle__1 = spotlight1.image_angle+180
				var angle__2 = spotlight2.image_angle+180
				if alzar_timer >= alzar_t_timer
				{
					var _spotlight1_laser = create_laser(spotlight1.x,spotlight1.y,1,10,0.1,0,2,angle__1)
					_spotlight1_laser.image_angle = angle__1+45
					
					create_arrow_laser(spotlight1.x,spotlight1.y,depth,0.5,angle__1+90,64,1,3,1)
		
					var _spotlight2_laser = create_laser(spotlight2.x,spotlight2.y,1,10,0.1,0,2,angle__2)
					_spotlight2_laser.image_angle = angle__2-45
					
					create_arrow_laser(spotlight2.x,spotlight2.y,depth,0.5,angle__2+45,64,1,3,1)
		
					spotlight1.w_alpha = 1
					spotlight1.image_xscale *= 0.95
					spotlight1.image_yscale *= 0.95
					spotlight2.w_alpha = 1
					spotlight2.image_xscale *= 0.95
					spotlight2.image_yscale *= 0.95
					yonsei_hitbox.w_alpha = 1
					yonsei_hitbox.image_xscale *= 0.95
					yonsei_hitbox.image_yscale *= 0.95
					alzar_timer -= alzar_t_timer
					global.t_bg_color_alpha = 0.5
				}
		
				if !instance_exists(spotlight1_preview_ins)
				{
					spotlight1_preview_ins = create_laser(spotlight1.x,spotlight1.y,9999,10,0.1,0,2,angle__1)
					spotlight1_preview_ins.image_angle = angle__1+45
					spotlight1_preview_ins.image_xscale = 1
					spotlight1_preview_ins.image_yscale = 64
		
					spotlight2_preview_ins = create_laser(spotlight2.x,spotlight2.y,9999,10,0.1,0,2,angle__2)
					spotlight2_preview_ins.image_angle = angle__2-45
					spotlight2_preview_ins.image_xscale = 1
					spotlight2_preview_ins.image_yscale = 64
				}
				else
				{
					spotlight1_preview_ins.image_angle = angle__1+45
					spotlight1_preview_ins.image_xscale = 1
					spotlight1_preview_ins.image_yscale = 64
					spotlight1_preview_ins.image_alpha = 0.4
					
					spotlight2_preview_ins.image_angle = angle__2-45
					spotlight2_preview_ins.image_xscale = 1
					spotlight2_preview_ins.image_yscale = 64
					spotlight2_preview_ins.image_alpha = 0.4
				}
	
				if (spotlight1.t_angle > 50 || spotlight1.t_angle < -150)
				{
					global.alzar_effect *= -1
				}
			}
		}
		else
		{
			if instance_exists(spotlight1_preview_ins)
			{
				spotlight1_preview_ins.target_time = 1
				spotlight2_preview_ins.target_time = 1
			}
		}

		if global.alzar_effect2 = 1
		{
			alzar_timer2 ++

			if alzar_timer2 >= alzar_t_timer
			{
				alzar_timer2 -= alzar_t_timer
				alzar_timer2_stack ++
			}
	
			if alzar_timer2_stack = 2 && instance_exists(yonsei_hitbox)
			{
				for(var i = 0; i < 360; i += 15)
				{
					var attack_ef = instance_create_depth(yonsei_hitbox.x,yonsei_hitbox.y-128,depth-1,hitbox_6)
					attack_ef.direction = i
					attack_ef.speed = 32
					attack_ef.keep_spin_angle = 2
					attack_ef.image_xscale = 0.06
					attack_ef.image_yscale = 0.06
					attack_ef.w_alpha = 10
				}
		
				global.background_color = choose(#82849d,#5d68a8,#650b2f,#5a365c)
				alzar_timer2_stack = 0
			}
		}



		if (global.wakrio_effect != 0 || global.wakrio_effect2 > 0)
		{
			wakrio_timer++
			if (wakrio_timer > 27.09766)
			{
				if (global.wakrio_effect != 0)
				{
					if global.wakrio_effect == 1
					{
						var random_x = irandom_range(global.c_x,global.c_x+420)
					}
					if global.wakrio_effect == -1
					{
						var random_x = irandom_range(global.c_w,global.c_w-420)
					}
		
					if (global.wakrio_effect != -2 && instance_exists(hitbox_8))
					{
						for(var i = global.wakrio_effect2*15; i < 360+global.wakrio_effect2*15; i += 30)
						{
							var attack_ef = instance_create_depth(hitbox_8.x,hitbox_8.y,depth+1,hitbox_2);
							attack_ef.direction = i;
							attack_ef.speed = 10;
							attack_ef.keep_spin_angle = 2;
							attack_ef.image_xscale = 0.2;
							attack_ef.image_yscale = 0.2;
							attack_ef.w_alpha = 10;
							attack_ef.sprite_index = spr_circle_spike2;
						}
						global.wakrio_effect2 ++;
						
						if (global.wakrio_effect2 > 1)
						{
							global.wakrio_effect2 = 0;
						}
						hitbox_8.w_alpha = 1
						hitbox_8.image_xscale = 0.8
						hitbox_8.image_yscale = 0.8
						global.w_alpha = 0.15
						
						var _ef = instance_create_depth(hitbox_8.x,hitbox_8.y,hitbox_8.depth+1,explosion_effect)
						_ef.image_xscale = 3
						_ef.image_yscale = 3
						_ef.t_scale = 4
						_ef.image_blend = c_white
						
						var _ef = instance_create_depth(hitbox_8.x,hitbox_8.y,hitbox_8.depth+1,explosion_effect)
						_ef.image_xscale = 3.7
						_ef.image_yscale = 3.7
						_ef.t_scale = 6
						_ef.image_blend = c_white
					}

					repeat(irandom_range(1,4))
					{
						var laser___ = create_laser(room_width*0.5,room_height*0.5,60,5,3,2,1,180)
						laser___.image_angle = irandom_range(0,359)
					}
				}
				
				
				
				
				wakrio_timer -= 27.09766
			}
		}
		
		if (global.wakrio_effect3 > 0)
		{
			master_bpm_timer++
			if (master_bpm_timer > 27.09766)
			{
				if (global.wakrio_effect3 >= 1)
				{
					create_laser(global.c_w,irandom_range(global.c_y+320,global.c_h-320),60,26,4,2,1,90);
				}
				
				if (global.wakrio_effect3 >= 2)
				{
					var attack_ef = instance_create_depth(global.c_w,irandom_range(global.c_y+320,global.c_h-320),depth+1,hitbox_2)
					attack_ef.direction = 180
					attack_ef.speed = 20
					attack_ef.keep_spin_angle = 2
					attack_ef.image_xscale = 0.4
					attack_ef.image_yscale = 0.4
					attack_ef.w_alpha = 10
				}

				master_bpm_timer -= 27.09766
			}
		}


		if global.master_remix_effect > 0
		{
			global.master_remix_effect++
			if global.master_remix_effect > 5
			{
				if audio_is_playing(promise)
				{
					if (abs(global.map_speed) > 0)
					{
						var size = irandom_range(10,5)/600
						var __circle_ = create_projectile(global.c_w,irandom_range(global.c_y,global.c_h),size,0,0,-size*abs(global.map_speed),abs(global.map_speed)/15,180,spr_circle)
						__circle_.image_alpha = 0.2
					}
					else
					{
						var size = irandom_range(10,5)/600
						var __circle_ = create_projectile(irandom_range(global.c_x+global.t_map_speed*0.5,global.c_w+global.t_map_speed*10),global.c_y,size,0,size*24,0,0.5,270,spr_circle)
						__circle_.image_alpha = 0.2
					}
				}
				else
				{
					var size = irandom_range(10,5)/10
					var __circle_ = create_projectile(irandom_range(global.c_x+global.t_map_speed*0.5,global.c_w+global.t_map_speed*10),global.c_y,size,0,size*24,-4,0.5,255,spr_rain)
					__circle_.image_alpha = 0.8
					__circle_.image_angle = 165
				}
				global.master_remix_effect = 1
			}
		}

		if global.master_remix_effect2 > 0
		{
			global.master_remix_effect2++
			if global.master_remix_effect2 > 5
			{
				var scale = irandom_range(1,10)/10
				var _misile_ = create_square_misile(irandom_range(global.c_x,global.c_w),global.c_h,2,20/scale,0,0,scale)
				_misile_.direction = 90
				_misile_.image_angle = 90
				_misile_.speed = 68*scale/2
				global.master_remix_effect2 = 1
			}
		}


		if global.master_remix_effect3 > 0
		{
			master_bpm_timer ++
			if master_bpm_timer >= (4*3600/global.bpm)+global.music_sync_offset*3*60
			{
				view_shake(0.1,20,0,2)
				master_bpm_timer -=(4*3600/global.bpm)+global.music_sync_offset*3*60
			}
		}

		if global.master_remix_effect4 != 0 && instance_exists(master_hitbox)
		{
			if global.master_remix_effect4 > 0
			{
				if master_hitbox.t_y > room_height*0.5
				{
					master_hitbox.t_y -= 5
				}
			}
			else
			{
				master_hitbox.t_y -= 5*global.master_remix_effect4
			}
		}

		if global.master_remix_effect5 > 0 && instance_exists(master_hitbox)
		{
			master_bpm_timer ++
			if master_bpm_timer >= (3600/global.bpm)+global.music_sync_offset*3*60
			{
				master_hitbox.w_alpha = 2
				master_hitbox.image_xscale *= 1.2
				master_hitbox.image_yscale *= 1.2
				var angle = master_hitbox.image_angle
				var _ins__ = create_projectile(master_hitbox.x,master_hitbox.y,master_hitbox.image_xscale,0,lengthdir_x(40,135+angle),lengthdir_y(40,135+angle),0,0,spr_triangle_half)
				_ins__.image_index = 0
				_ins__.image_angle = angle
		
				var _ins__ = create_projectile(master_hitbox.x,master_hitbox.y,master_hitbox.image_xscale,0,lengthdir_x(40,angle),lengthdir_y(40,angle),0,0,spr_triangle_half)
				_ins__.image_index = 1
				_ins__.image_angle = angle
		
				var _ins__ = create_projectile(master_hitbox.x,master_hitbox.y,master_hitbox.image_xscale,0,lengthdir_x(40,225+angle),lengthdir_y(40,225+angle),0,0,spr_triangle_half)
				_ins__.image_index = 2
				_ins__.image_angle = angle
		
				view_shake(0.1,10,0,2)
		
				master_bpm_timer -=(3600/global.bpm)+global.music_sync_offset*3*60
			}
	
			master_movement_timer ++
			master_hitbox.t_y += master_movement_dir;
			if master_movement_timer >= 50
			{
				master_movement_dir *= -1
				master_movement_timer = 0
			}
		}



		if global.promise_effect > 0
		{
			global.promise_effect ++
			if global.promise_effect > 21.8*4
			{
				var xx = irandom_range(global.c_x+256,global.c_w-256)
				var scale = irandom_range(10,5)/40
				var attack_ef = instance_create_depth(xx,global.c_y-irandom_range(320,160),depth+1,hitbox_10)
				attack_ef.gravity = 15
				attack_ef.gravity_direction = 270
				attack_ef.image_xscale = scale
				attack_ef.image_yscale = scale
				attack_ef.sprite_index = spr_star
				attack_ef.w_alpha = 10
				attack_ef.keep_spin_angle = irandom_range(10,5)/30
				attack_ef.direction = 270
				attack_ef.speed = 10
				global.promise_effect -= 21.8*4
			}
		}



		if global.gomem_mashup_effect > 0
		{
	
			if (global.gomem_mashup_effect == 1)
			{
				global.gomem_mashup_effect_arrow_alpha += (-0.01 - global.gomem_mashup_effect_arrow_alpha)*0.1
				master_bpm_timer ++
				if master_bpm_timer >= (3600/global.bpm)*2+global.music_sync_offset*3*60
				{
					var random_x = room_width*0.8
					create_spike_circle(random_x,global.c_y,random_x,irandom_range(global.c_y+512,global.c_h-512),60,0,0,0.2)

					global.t_bg_color_alpha = 1
					view_shake(0.1,5,0,2)
			
					master_bpm_timer -=(3600/global.bpm)*2+global.music_sync_offset*3*60
				}
			}
			else if (global.gomem_mashup_effect == 2 || global.gomem_mashup_effect == 3)
			{
				global.gomem_mashup_effect_arrow_alpha += (-0.01 - global.gomem_mashup_effect_arrow_alpha)*0.1
				master_bpm_timer ++
				if (master_bpm_timer >= (3600/global.bpm)*2+global.music_sync_offset*3*60)
				{
					if (global.n_camera_zoom == 1)
					{
						var random_yy = irandom_range(room_height*0.5,room_height*0.5-256+(gomem_mashup_effect_dir_updown*512))
						var random_xx = (global.gomem_mashup_effect_dir != 1) ? global.c_x : global.c_w
						var dir = (global.gomem_mashup_effect_dir != 1) ? 1 : -1
						var angle = (gomem_mashup_effect_dir_updown != 1) ? 0 : 1;
						create_cylinder(random_xx,random_yy,obj_player.depth-15,1,60,64*dir,0,180*angle,false)
					}
			
					if (global.gomem_mashup_effect == 3)
					{
						create_laser(global.c_x,global.c_y,60,26,4,2,10,180)
						create_laser(global.c_w,global.c_y,60,26,4,2,10,180)
					}
			
					gomem_mashup_effect_dir_updown *= -1
					master_bpm_timer -=(3600/global.bpm)*2+global.music_sync_offset*3*60
				}
			}
			else if (global.gomem_mashup_effect >= 4 && global.gomem_mashup_effect <= 7)
			{
				global.gomem_mashup_effect_arrow_alpha += (0.99 - global.gomem_mashup_effect_arrow_alpha)*0.1
				master_bpm_timer ++
				if (master_bpm_timer >= (3600/global.bpm)+global.music_sync_offset*3*60)
				{
					global.gomem_mashup_effect_arrow_alpha = 2
					if (global.gomem_mashup_effect != 6 && global.gomem_mashup_effect != 7)
					{
						if (global.n_camera_zoom == 1)
						{
							var random_yy = room_height*0.5-16+(gomem_mashup_effect_dir_updown*32)
							var random_xx = (global.gomem_mashup_effect_dir != 1) ? global.c_x : global.c_w
							var dir = (global.gomem_mashup_effect_dir != 1) ? 1 : -1
							var angle = (gomem_mashup_effect_dir_updown != 1) ? 0 : 1;
							create_cylinder(random_xx,random_yy,code.depth,0.7,60,64*dir,0,180*angle,false)
						}
						view_shake(0.1,1,0,2)

						global.t_bg_color_alpha = 0.3
						gomem_mashup_effect_dir_updown_timer ++
						if (gomem_mashup_effect_dir_updown_timer >= 2)
						{
							gomem_mashup_effect_dir_updown *= -1
							gomem_mashup_effect_dir_updown_timer = 0
						}
						gomem_mashup_effect_dir_updown2 *= -1
						master_bpm_timer -=(3600/global.bpm)+global.music_sync_offset*3*60
					}
					else if (global.gomem_mashup_effect == 6)
					{
						gomem_mashup_effect_dir_updown2 *= -1
						global.t_bg_color_alpha = 0.3
						var random_x = room_width*0.5+gomem_mashup_effect_dir_updown2*1200
						create_spike_circle(random_x,global.c_y,random_x,irandom_range(global.c_y+512,global.c_h-512),60,0,0,0.2)
						master_bpm_timer -= (3600/global.bpm)*2+global.music_sync_offset*3*60
					}
					else if (global.gomem_mashup_effect == 7)
					{
						gomem_mashup_effect_dir_updown2 *= -1
						global.w_alpha = 0.3
						master_bpm_timer -= (3600/global.bpm)*4+global.music_sync_offset*3*60
					}
			
					if (global.gomem_mashup_effect == 5 || global.gomem_mashup_effect == 6 || global.gomem_mashup_effect == 7)
					{
						for(var i = -2; i < 8; i++)
						{
							var spike_xx = global.c_x-128*gomem_mashup_effect_dir_updown2+i*512
							var ins_spike = create_cylinder(spike_xx,global.c_y+560,code.depth,1,1,256,90,180,true)
							ins_spike.sprite_index = spr_spike_cylinder
							var ins_spike = create_cylinder(spike_xx-256,global.c_h-560,code.depth,1,1,256,270,0,true)
							ins_spike.sprite_index = spr_spike_cylinder
							view_shake(0.1,1,1,2)
						}
					}
				}
			}
		}


		if global.yuha_effect1 > 0
		{
			master_bpm_timer ++
			if master_bpm_timer >= (3600/global.bpm)+global.music_sync_offset*3*60
			{
				repeat(choose(2,3))
				{
					while(true)
					{
						var random_xx = irandom_range(0,27)*132;
						var random_yy = irandom_range(0,15)*132;
	
						if ((abs(random_xx-1848) > 660 || abs(random_yy-1056) >= 660) && instance_position(random_xx,random_yy,hitbox_9) == noone)
						{
							create_explo_square(global.c_x+random_xx,global.c_y+random_yy,60,8888,0,0,2);
							break;
						}
					}
				}

				if (global.yuha_effect1 == 2)
				{
					var ins_tmp = -4;
					while(true)
					{
						var ins_tmp = instance_find(hitbox_9,irandom(instance_number(hitbox_9)-1));
						if (instance_exists(ins_tmp) && ins_tmp.des_time != 120)
						{
							var xx = camera_get_view_x(view_camera[0])
							var yy = camera_get_view_y(view_camera[0])

							var xx_w = camera_get_view_width(view_camera[0])
							var yy_h = camera_get_view_height(view_camera[0])
					
							if (ins_tmp.x >= xx && ins_tmp.x <= xx+xx_w && ins_tmp.y >= yy && ins_tmp.y <= yy+yy_h)
							{
								break;
							}
						}
					}

					if (instance_exists(ins_tmp))
					{
						var tmp = choose(-1,1)
						ins_tmp.w_alpha = 2;
						ins_tmp.t_angle = tmp;
						ins_tmp.des_time = 100;
						ins_tmp.warning_timer = 60;
						ins_tmp.image_xscale *= 2;
						ins_tmp.image_yscale *= 2;
						ins_tmp.image_blend = (global.map_color == c_white) ? #5595ff : #ff637a;
						ins_tmp.depth -= 52
						var tmp2 = create_projectile_spin(ins_tmp.x,ins_tmp.y,spr_square,0.5,60,tmp,0,24);
						tmp2.image_angle = point_direction(ins_tmp.x,ins_tmp.y,room_width*0.5,room_height*0.5)-tmp*45
						view_shake(1,5,0,2)
					}
				}
		
				if (global.yuha_effect2 == 1)
				{
					var ins_tmp = -4;
					while(true)
					{
						var ins_tmp = instance_find(hitbox_9,irandom(instance_number(hitbox_9)-1));
						if (instance_exists(ins_tmp) && ins_tmp.des_time != 120)
						{
							break;
						}
					}

					if (instance_exists(ins_tmp))
					{
						var dir = point_direction(ins_tmp.x,ins_tmp.y,room_width*0.5,room_height*0.5)
						if (abs(dir-270) <= 45)
						{
							dir = 270;
						}
						else if (abs(dir-90) < 45)
						{
							dir = 90;
						}
						else if (abs(dir-180) <= 45)
						{
							dir = 180;
						}
						else
						{
							dir = 0;
						}
				
						ins_tmp.t_speed = 48
						ins_tmp.direction = dir;
						ins_tmp.w_alpha = 2;
						ins_tmp.des_time = 120;
						ins_tmp.warning_timer = 120;
						ins_tmp.image_blend = (global.map_color == c_white) ? #5595ff : #ff637a;
						ins_tmp.depth -= 52
						create_laser(ins_tmp.x,ins_tmp.y,60,20,1,2,1,dir-90)
						global.w_alpha = 0.3
					}
				}
		
				if (global.yuha_effect3 == 1)
				{
					create_laser(irandom_range(global.c_x,global.c_w),global.c_y,60,26,4,2,1,180)
				}
		
		
				master_bpm_timer -= global.yuha_effect1*(3600/global.bpm)+global.music_sync_offset*3*60
			}
		}
		
		
		
		
		if global.roki_effect1 > 0
		{
			master_bpm_timer ++
			if master_bpm_timer >= (3600/global.bpm)+global.music_sync_offset*3*60
			{
				if (global.roki_effect1 == 1)
				{
					var attack_ef = instance_create_depth(global.c_w,irandom_range(global.c_y+32,global.c_h-32),depth+1,hitbox_2)
					attack_ef.direction = 180
					attack_ef.speed = 20
					attack_ef.keep_spin_angle = 2
					attack_ef.image_xscale = 0.4
					attack_ef.image_yscale = 0.4
					attack_ef.w_alpha = 10
				
				
					create_laser(global.c_w,irandom_range(global.c_y+32,global.c_h-32),60,15,4,2,1,90)
				}
				else
				{
					var attack_ef = instance_create_depth(global.c_w,irandom_range(global.c_y+32,global.c_h-32),depth+1,hitbox_2)
					attack_ef.direction = 180
					attack_ef.speed = 20
					attack_ef.keep_spin_angle = 2
					attack_ef.image_xscale = 0.4
					attack_ef.image_yscale = 0.4
					attack_ef.w_alpha = 10
					
					var attack_ef = instance_create_depth(global.c_x,irandom_range(global.c_y+32,global.c_h-32),depth+1,hitbox_2)
					attack_ef.direction = 0
					attack_ef.speed = 20
					attack_ef.keep_spin_angle = 2
					attack_ef.image_xscale = 0.4
					attack_ef.image_yscale = 0.4
					attack_ef.w_alpha = 10
					
					create_laser(irandom_range(global.c_x+32,global.c_w-32),global.c_y,60,15,4,2,1,180)
				}
				
				master_bpm_timer -= (3600/global.bpm)+global.music_sync_offset*3*60
			
			}
		}
		
		
		
		if (global.lockdown_effect1 > 0)
		{
			master_bpm_timer ++
			if master_bpm_timer >= (3600/global.bpm)+global.music_sync_offset*2*60
			{
				if (global.lockdown_effect1 == 1)
				{
					hitbox_8.w_alpha = 1;
				}
				
				repeat(irandom_range(1,3))
				{
					if (global.lockdown_effect1 == 1)
					{
						var laser___ = create_laser(hitbox_8.x,hitbox_8.y,60,5,3,2,1,180)
						laser___.image_angle = irandom_range(0,359)
					}
					var _random_sel_xy_ = choose(0,1,2,3)
					if (_random_sel_xy_ == 0)
					{
						var random_x = irandom_range(global.c_x,global.c_w)
						var random_y = global.c_y-320
					}
					else if (_random_sel_xy_ == 1)
					{
						var random_x = global.c_w+320
						var random_y = irandom_range(global.c_y,global.c_h)
					}
					else if (_random_sel_xy_ == 2)
					{
						var random_x = irandom_range(global.c_x,global.c_w)
						var random_y = global.c_h+320
					}
					else
					{
						var random_x = global.c_x-320
						var random_y = irandom_range(global.c_y,global.c_h)
					}
					var attack_ef = instance_create_depth(random_x,random_y,hitbox_8.depth+1,hitbox_2);
					attack_ef.direction = point_direction(random_x,random_y,hitbox_8.x,hitbox_8.y);
					attack_ef.sprite_index = spr_circle_spike
					attack_ef.speed = irandom_range(10,14);
					attack_ef.keep_spin_angle = 2;
					attack_ef.image_xscale = 0.4;
					attack_ef.image_yscale = 0.4;
					attack_ef.w_alpha = 10;
				}
				
				master_bpm_timer -= (3600/global.bpm)+global.music_sync_offset*2*60
			}
		}
		
		if (global.lockdown_effect2 > 0 && instance_exists(pipe_ef))
		{
			for(var i = -45; i <= 45; i += 45)
			{
				var tmp_angle = pipe_ef.direction+90+i;
				var laser_tmp = create_laser(spike_ef.x,spike_ef.y,50,12,1,2,1,tmp_angle-90);
				laser_tmp.auto_angle = pipe_ef;
				laser_tmp.auto_angle_plusment = i;
				create_arrow_laser(spike_ef.x+lengthdir_x(400,tmp_angle),spike_ef.y+lengthdir_y(400,tmp_angle),obj_player.depth-15,0.8,tmp_angle,96,true,10,50);
			}
			global.lockdown_effect2 = 0;
		}
		
		if (global.lockdown_effect3 > 0)
		{
			master_bpm_timer ++
			if master_bpm_timer >= (3600/global.bpm)+global.music_sync_offset*2*60
			{
				if (global.lockdown_effect3 == 1)
				{
					global.lockdown_effect2 = 1;
				}
				else if (global.lockdown_effect3 == 2)
				{
					global.lockdown_effect2 = 1;
				}
				else if (global.lockdown_effect3 == 3)
				{
					global.lockdown_effect2 = 1;
				}
				else
				{
					pipe_ef.image_xscale *= 1.01;
					pipe_ef.image_yscale *= 0.7;
					pipe_ef.w_alpha = 1;
					spike_ef.direction += 180;
					spike_ef.w_alpha = 1;
					
					var ins__tmp = create_spike_circle(spike_ef.x,spike_ef.y,spike_ef.x,spike_ef.y,60,0,0,0.3);
					ins__tmp.depth = spike_ef.depth+15;
				}
				
				global.lockdown_effect3++;
				if (global.lockdown_effect3 > 4)
				{
					global.lockdown_effect3 = 1;
				}
				master_bpm_timer -= (3600/global.bpm)+global.music_sync_offset*2*60
			}
		}
		
		
		if (global.lockdown_effect4 > 0)
		{
			master_bpm_timer ++
			
			if (global.lockdown_effect4 == 1)
			{
				pipe_ef.direction -= 5;
				pipe_ef.image_angle = pipe_ef.direction;
				spike_ef.direction -= 5;
				spike_ef.image_angle = spike_ef.direction;
				
				if (lockdown_effect4_1 == 0)
				{
					spike_ef.t_y += 20;
				}
				else if (lockdown_effect4_1 == 1)
				{
					spike_ef.t_x -= 20;
				}
				else if (lockdown_effect4_1 == 2)
				{
					spike_ef.t_y -= 20;
				}
				else
				{
					spike_ef.t_x += 20;
				}
			}
			
			if master_bpm_timer >= (3600/global.bpm)+global.music_sync_offset*2*60
			{
				if (global.lockdown_effect4 == 1)
				{
					global.lockdown_effect2 = 1;
					if (global.map_speed_y <= 1)
					{
						var ins__tmp = create_spike_circle(spike_ef.x,spike_ef.y,spike_ef.x,spike_ef.y,1,0,0,0.3);
						ins__tmp.depth = spike_ef.depth+15;
						spike_ef.image_xscale *= 1.2;
						spike_ef.image_yscale *= 1.2;
						
						spike_ef.w_alpha = 1;
						pipe_ef.w_alpha = 1;
					}
				}
				else if (global.lockdown_effect4 == 2)
				{
					global.lockdown_effect2 = 1;
					if (global.map_speed_y <= 1)
					{
						if (global.t_selected_difficulty == 0)
						{
							var ins__tmp = create_spike_circle(spike_ef.x,spike_ef.y,spike_ef.x,spike_ef.y,1,0,0,0.3);
							ins__tmp.depth = spike_ef.depth+15;
							spike_ef.image_xscale *= 1.2;
							spike_ef.image_yscale *= 1.2;
							
							spike_ef.w_alpha = 1;
							pipe_ef.w_alpha = 1;
						}
					}
				}
				else if (global.map_speed_y > 1 && global.lockdown_effect4 == 3)
				{
					for(var i = 0; i < 360; i += 20-(1-global.t_selected_difficulty)*10)
					{
						var attack_ef = instance_create_depth(spike_ef.x,spike_ef.y,depth+1,hitbox_6)
						attack_ef.direction = i
						attack_ef.speed = 20+global.map_speed_y*0.84
						attack_ef.keep_spin_angle = 2
						attack_ef.image_xscale = 0.2*0.3
						attack_ef.image_yscale = 0.2*0.3
						attack_ef.w_alpha = 10
					}
					
					spike_ef.w_alpha = 1;
					pipe_ef.w_alpha = 1;
				}


				
				global.lockdown_effect4++;
				if (global.lockdown_effect4 > 4)
				{
					global.lockdown_effect4 = 1;
					lockdown_effect4_1 ++;
					if (lockdown_effect4_1 > 3)
					{
						lockdown_effect4_1 = 0;
					}
				}
				master_bpm_timer -= (3600/global.bpm)+global.music_sync_offset*2*60
			}
		}
		
		if (global.lockdown_effect5 > 0)
		{
			global.lockdown_effect5 += global.map_speed_y;
			lockdown_effect5_1++;
			lockdown_effect5_2++;
			if (global.lockdown_effect5 >= 256)
			{
				var _shaking_circle = create_explo_circle(global.c_x,global.c_y-128,1,240,0,0,7,6,0,0)
				_shaking_circle.direction = 0
				_shaking_circle.sprite_index = spr_square
		
				var _shaking_circle = create_explo_circle(global.c_w,global.c_y-128,1,240,0,0,7,6,0,0)
				_shaking_circle.direction = 180
				_shaking_circle.sprite_index = spr_square
				global.lockdown_effect5 -= 256;
			}
			
			if (lockdown_effect5_1 > 5)
			{
				for(var i = -2; i <= 2; i++)
				{
					var attack_ef = instance_create_depth(room_width*0.5+i*900+sin(lockdown_effect5_2*(pi/90))*640,global.c_h,obj_player.depth-10,hitbox_2)
					attack_ef.vspeed = irandom_range(-50,-20)/2
					attack_ef.gravity = 1
					attack_ef.keep_spin_angle = irandom_range(-2,2)
					attack_ef.image_xscale = 0.4
					attack_ef.image_yscale = 0.4
					attack_ef.w_alpha = 10
				}
				lockdown_effect5_1 = 0;
			}
			
			if (lockdown_effect5_3 > 0)
			{
				master_bpm_timer++;
				if (master_bpm_timer >= (3600/global.bpm)+global.music_sync_offset*2*60)
				{
					if (lockdown_effect5_3 <= 2)
					{
						create_laser(irandom_range(global.c_x,global.c_w),global.c_y,60,26,4,2,2,180)
					}
					
					if (lockdown_effect5_3 == 2)
					{
						var attack_ef = instance_create_depth(irandom_range(global.c_x,global.c_w),global.c_y-100,obj_player.depth-10,hitbox_2)
						attack_ef.sprite_index = spr_circle_spike;
						attack_ef.keep_spin_angle = irandom_range(-2,2);
						attack_ef.image_xscale = 0.25;
						attack_ef.image_yscale = 0.25;
						attack_ef.w_alpha = 10;
						attack_ef.direction = 90;
						attack_ef.gravity = 0.1;
					}
					
					if (lockdown_effect5_3 == 3)
					{
						create_laser(irandom_range(global.c_x,global.c_w),global.c_y,60,26,4,2,1,180)
					}
					master_bpm_timer -= (3600/global.bpm)+global.music_sync_offset*2*60
				}
			}
		}
		
		
		if (global.lockdown_effect6 > 0)
		{
			if (global.lockdown_effect6 == 1)
			{
				lockdown_pattern_timer ++
				var tmp_pipe_dir = lockdown_pattern_dir[lockdown_pattern_d_timer];
				if (lockdown_pattern_shoot[lockdown_pattern_s_timer] == 0)
				{
					pipe_ef.direction += tmp_pipe_dir;
					spike_ef.direction += tmp_pipe_dir;
				}

				pipe_ef.image_angle = pipe_ef.direction;
				spike_ef.image_angle = spike_ef.direction;
			
				if lockdown_pattern_timer >= (3600/global.bpm)+global.music_sync_offset*2*60
				{
					if (lockdown_pattern_shoot[lockdown_pattern_s_timer] == 1)
					{
						for(var i = -45; i <= 45; i += 45)
						{
							var tmp_angle = pipe_ef.direction+90+i;
							create_arrow_laser(spike_ef.x+lengthdir_x(400,tmp_angle),spike_ef.y+lengthdir_y(400,tmp_angle),obj_player.depth-15,0.8,tmp_angle,96,true,10,1);
						}
						if (lockdown_pattern_s_timer == 1)
						{
							lockdown_pattern_d_timer++;
						}
					}

					lockdown_pattern_s_timer ++;
					if (lockdown_pattern_s_timer > 3)
					{
						lockdown_pattern_s_timer = 0;
					}
					lockdown_pattern_timer -= (3600/global.bpm)+global.music_sync_offset*2*60
				}
			}
			else
			{
				pipe_ef.direction -= 5;
				spike_ef.direction -= 5;
				pipe_ef.image_angle = pipe_ef.direction;
				spike_ef.image_angle = spike_ef.direction;
				spike_ef.t_y ++;
			}
		}
		
		
		
		if (global.happysegu_effect1 > 0)
		{
			master_bpm_timer++;
			if (global.happysegu_effect1 < 3)
			{
				if (master_bpm_timer >= (3600/global.bpm)+global.music_sync_offset*60)
				{
					var tmp_rd_yy = irandom_range(global.c_y+32,global.c_h-32)
					var attack_ef = instance_create_depth(global.c_w,tmp_rd_yy,depth+1,hitbox_2)
					attack_ef.direction = 180
					attack_ef.speed = 20
					attack_ef.keep_spin_angle = 2
					attack_ef.image_xscale = 0.4
					attack_ef.image_yscale = 0.4
					attack_ef.w_alpha = 10
				
					var attack_ef = instance_create_depth(global.c_x,tmp_rd_yy,depth+1,hitbox_2)
					attack_ef.direction = 0
					attack_ef.speed = 20
					attack_ef.keep_spin_angle = 2
					attack_ef.image_xscale = 0.4
					attack_ef.image_yscale = 0.4
					attack_ef.w_alpha = 10
				
					if (global.happysegu_effect1 >= 2)
					{
						create_laser(room_width,irandom_range(global.c_y+32,global.c_h-32),60,15,4,2,1,90)
					}
				
					master_bpm_timer -= (3600/global.bpm)+global.music_sync_offset*60
				}
			}
			else
			{
				if (master_bpm_timer >= (3600/global.bpm)*4+global.music_sync_offset*60)
				{
					if instance_number(hitbox_19) < 3
					{
						var tmp_rd = choose(global.c_y-400,global.c_h+400)
						var tmp_xx = irandom_range(global.c_x,global.c_w)
						create_bounce_ball(tmp_xx,tmp_rd,0.8,15,point_direction(tmp_xx,tmp_rd,room_width*0.5,room_height*0.5)+irandom_range(-30,30),5)
					}
					master_bpm_timer -= (3600/global.bpm)*4+global.music_sync_offset*60
				}
			}
		}
		
		if (global.happysegu_effect2 > 0)
		{
			master_bpm_timer++;
			if (master_bpm_timer >= (3600/global.bpm)+global.music_sync_offset*60)
			{
				create_laser(global.c_w,irandom_range(global.c_y+32,global.c_h-32),60,15,0,0,0.5,90)
				
				var tmp_xx = (global.happysegu_effect2 == 1) ? global.c_x : global.c_w;
				create_laser(tmp_xx,global.c_y,1,5,4,2,4,180)
				
				if (happysegu_pattern_timer == 2 || happysegu_pattern_timer == 6)
				{
					for(var i = global.c_y; i < global.c_h; i += 64)
					{
						if (global.happysegu_effect2 == 1)
						{
							var attack_ef = instance_create_depth(global.c_x,i,depth+1,hitbox_2)
							attack_ef.sprite_index = spr_cross
							attack_ef.direction = 0
							attack_ef.speed = 20
							attack_ef.keep_spin_angle = 2
							attack_ef.image_xscale = 0.05
							attack_ef.image_yscale = 0.05
							attack_ef.w_alpha = 10
						}
						else
						{
							var attack_ef = instance_create_depth(global.c_w,i,depth+1,hitbox_2)
							attack_ef.sprite_index = spr_cross
							attack_ef.direction = 180
							attack_ef.speed = 20
							attack_ef.keep_spin_angle = -2
							attack_ef.image_xscale = 0.05
							attack_ef.image_yscale = 0.05
							attack_ef.w_alpha = 10
						}
					}
				}

				
				global.happysegu_effect2 = global.happysegu_effect_pattern[happysegu_pattern_timer];
				master_bpm_timer -= (3600/global.bpm)+global.music_sync_offset*60
				happysegu_pattern_timer++;
				if (happysegu_pattern_timer > 7)
				{
					happysegu_pattern_timer = 0
				}
			}
		}
		
		if (global.happysegu_effect3 > 0)
		{
			master_bpm_timer++;
			if (master_bpm_timer >= (3600/global.bpm)+global.music_sync_offset*60)
			{
				if (abs(segu_ef.image_angle - segu_ef.t_angle) <= 1)
				{
					segu_ef.image_xscale *= 1.3;
					segu_ef.image_yscale *= 1.3;
					segu_ef.w_alpha = 1;
					var tmp_angle = segu_ef.image_angle+happysegu_pattern_timer*90;
					create_arrow_laser(room_width*0.5+lengthdir_x(256,tmp_angle),room_height*0.5+lengthdir_y(256,tmp_angle),depth,0.8,tmp_angle,128,true,10,1)

			
					happysegu_pattern_timer++;
					if (happysegu_pattern_timer > 3)
					{
						segu_ef.w_alpha = 10;
						//var _shaking_circle = create_explo_circle(room_width*0.5,room_height*0.5,1,60,2,0,4*image_xscale,0,0,0)
						//_shaking_circle.sprite_index = spr_circle_outline
						//_shaking_circle.alarm[1] = 1
						
						var tmp_angle = point_direction(room_width*0.5,room_height*0.5,obj_player.x,obj_player.y);
						
						for(var i = 0; i < 4; i++)
						{
							var attack_ef = instance_create_depth(room_width*0.5,room_height*0.5,depth+1,hitbox_2);
							attack_ef.sprite_index = spr_circle_outline;
							attack_ef.direction = tmp_angle+i*90;
							attack_ef.speed = 64;
							attack_ef.keep_spin_angle = 2;
							attack_ef.image_xscale = 0;
							attack_ef.image_yscale = 0;
							attack_ef.w_alpha = 10;
							attack_ef.t_speed = 15;
							attack_ef.t_scale = 0.2;
						}
						
						segu_ef.x += lengthdir_x(64,tmp_angle);
						segu_ef.y += lengthdir_y(64,tmp_angle);
						var _ef = instance_create_depth(room_width*0.5,room_height*0.5,segu_ef.depth-10,explosion_effect);
						_ef.image_xscale = 4;
						_ef.image_yscale = 4;
						_ef.t_scale = 8;
						_ef.image_blend = global.map_color;

						happysegu_pattern_timer = 0
					}
					master_bpm_timer -= (3600/global.bpm)+global.music_sync_offset*60;
				}
			}
		}
	}
