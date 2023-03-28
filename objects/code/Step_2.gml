/// @description Insert description here
// You can write your code in this editor





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
var attack_ef = instance_create_depth(_xx_,_yy_,depth+1,hitbox_2)
attack_ef.direction = hitbox_11.image_angle
attack_ef.speed = 24
attack_ef.keep_spin_angle = 2
attack_ef.image_xscale = 0.4
attack_ef.image_yscale = 0.4
attack_ef.w_alpha = 10

var attack_ef = instance_create_depth(_xx_,_yy_,depth+1,hitbox_2)
attack_ef.direction = hitbox_11.image_angle+180
attack_ef.speed = 24
attack_ef.keep_spin_angle = -2
attack_ef.image_xscale = 0.4
attack_ef.image_yscale = 0.4
attack_ef.w_alpha = 10
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

global.yoong_laser_dir += random_dir_laser*0.5
global.yoong_laser_dir2 += random_dir_laser2*0.5

if global.yoong_laser_dir2 > 170
{
random_dir_laser2 = -1
}

if global.yoong_laser_dir2 < 10
{
random_dir_laser2 = 1
}

if global.yoong_laser_dir > 170
{
random_dir_laser = -1
}

if global.yoong_laser_dir < 10
{
random_dir_laser = 1
}

	if instance_exists(hitbox_7)
	{
		if cre_now1 = 1
		{
		var attack_ef = instance_create_depth(wakgood_shouting.x+irandom_range(-64,64),wakgood_shouting.y+irandom_range(-64,64),depth+1,hitbox_2)
		attack_ef.direction = global.yoong_laser_dir+irandom_range(-50,50)
		attack_ef.speed = irandom_range(40,64)
		attack_ef.keep_spin_angle = 2
		attack_ef.image_xscale = 0.4
		attack_ef.image_yscale = 0.4
		attack_ef.w_alpha = 10
		}
		
		if cre_now2 = 1
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
	if wakrio_timer > 27
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
	wakrio_timer = 0
	}
}