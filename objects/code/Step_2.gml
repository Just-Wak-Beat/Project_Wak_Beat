/// @description Insert description here
// You can write your code in this editor




if global.fukurou_snow_effect > 0
{
global.fukurou_snow_effect++
	if global.fukurou_snow_effect > 10
	{
	create_explo_circle(irandom_range(global.c_x,global.c_w),global.c_y,irandom_range(1,30),7200,0,0,0.05,2,4,0)
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
