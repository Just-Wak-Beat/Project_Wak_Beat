/// @description Insert description here
// You can write your code in this editor

	global.new_song_scroll += (global.t_new_song_scroll - global.new_song_scroll)*0.1

	if global.fukurou_snow_effect > 0
	{
		global.fukurou_snow_effect++
		if global.fukurou_snow_effect > 10
		{
			var __circle_ = create_explo_circle(irandom_range(global.c_x+global.t_map_speed*0.5,global.c_w+global.t_map_speed*10),global.c_y,irandom_range(1,30),7200,0,0,0.05,2,4,0)
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
			var attack_ef = instance_create_depth(irandom_range(global.c_x,global.c_w),global.c_h,player.depth-10,hitbox_2)
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
			var attack_ef = instance_create_depth(global.c_x,global.c_y,player.depth-10,hitbox_12)
			attack_ef.t_scale = 0.25
			attack_ef.t_x = global.c_x+256+global.turisumo_effect_scale
			attack_ef.t_y = global.c_y
			attack_ef.keep_spin_angle = 15
			attack_ef.w_alpha = 10
	
	
			var attack_ef = instance_create_depth(global.c_w,global.c_y,player.depth-10,hitbox_12)
			attack_ef.t_scale = 0.25
			attack_ef.t_x = global.c_w-256-global.turisumo_effect_scale
			attack_ef.t_y = global.c_y
			attack_ef.keep_spin_angle = 15
			attack_ef.w_alpha = 10
			global.turisumo_effect_2 = 1
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
			attack_ef.speed = 24
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


		if instance_exists(hitbox_7) && instance_exists(hitbox_3)
		{
			var target_ins = -4
			with(hitbox_3)
			{
				if (object_index == hitbox_3 && image_alpha >= 1)
				{
					target_ins = id
				}
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
		
			var _spotlight2_laser = create_laser(spotlight2.x,spotlight2.y,1,10,0.1,0,2,angle__2)
			_spotlight2_laser.image_angle = angle__2-45
		
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
		
			spotlight2_preview_ins = create_laser(spotlight2.x,spotlight2.y,9999,10,0.1,0,2,angle__2)
			spotlight2_preview_ins.image_angle = angle__2-45
		}
		else
		{
			spotlight1_preview_ins.image_angle = angle__1+45
			spotlight2_preview_ins.image_angle = angle__2-45
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



if global.wakrio_effect != 0
{
	wakrio_timer++
	if wakrio_timer > 27.09766
	{
		if global.wakrio_effect == 1
		{
			var random_x = irandom_range(global.c_x,global.c_x+420)
		}
		if global.wakrio_effect == -1
		{
			var random_x = irandom_range(global.c_w,global.c_w-420)
		}
		
		if global.wakrio_effect != -2
		{
			create_spike_circle(random_x,global.c_h,random_x,irandom_range(global.c_y+256,global.c_h-256),60,0,0,0.2)
		}

		repeat(irandom_range(1,4))
		{
			var laser___ = create_laser(room_width*0.5,room_height*0.5,60,5,3,2,1,180)
			laser___.image_angle = irandom_range(0,359)
		}
		wakrio_timer -= 27.09766
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
		if master_bpm_timer >= (3600/global.bpm)*2+global.music_sync_offset*3*60
		{
			var random_yy = irandom_range(room_height*0.5,room_height*0.5-256+(gomem_mashup_effect_dir_updown*512))
			var random_xx = (global.gomem_mashup_effect_dir != 1) ? global.c_x : global.c_w
			var dir = (global.gomem_mashup_effect_dir != 1) ? 1 : -1
			var angle = (gomem_mashup_effect_dir_updown != 1) ? 0 : 1;
			create_cylinder(random_xx,random_yy,player.depth-15,1,60,64*dir,0,180*angle)
			
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
		if master_bpm_timer >= (3600/global.bpm)+global.music_sync_offset*3*60
		{
			global.gomem_mashup_effect_arrow_alpha = 2
			if (global.gomem_mashup_effect != 6 && global.gomem_mashup_effect != 7)
			{
				var random_yy = room_height*0.5-16+(gomem_mashup_effect_dir_updown*32)
				var random_xx = (global.gomem_mashup_effect_dir != 1) ? global.c_x : global.c_w
				var dir = (global.gomem_mashup_effect_dir != 1) ? 1 : -1
				var angle = (gomem_mashup_effect_dir_updown != 1) ? 0 : 1;
				create_cylinder(random_xx,random_yy,code.depth,0.7,60,64*dir,0,180*angle)
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
					var ins_spike = create_cylinder(spike_xx,global.c_y+360,code.depth,0.5,1,256,90,180)
					ins_spike.sprite_index = spr_triangle
					var ins_spike = create_cylinder(spike_xx-256,global.c_h-360,code.depth,0.5,1,256,270,0)
					ins_spike.sprite_index = spr_triangle
					view_shake(0.1,1,1,2)
				}
			}
		}
	}
}