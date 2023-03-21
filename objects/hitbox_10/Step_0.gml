/// @description Insert description here
// You can write your code in this editor
x -= global.map_speed

image_angle += keep_spin_angle
if global.low_graphics = false
{
w_alpha += (-0.01 - w_alpha)*0.15
}
else
{
w_alpha = 0
}


if global.fukurou_snow_effect != 0 || global.ipad_effect != 0 || audio_is_playing(isedolhyang)
{
var _image_scale = 640*image_xscale

	if des = 0 && ((y > global.c_h && gravity_direction = 270) || (y < global.c_y && gravity_direction != 270))
	{
	var _shaking_circle = create_explo_circle(x,y,1,60,2,0,2*image_xscale,0,0,0)
	_shaking_circle.sprite_index = spr_circle_outline
	
		if audio_is_playing(winter_spring)
		{
		global.w_alpha = 1
			for(var i = 0; i < 180; i += 15)
			{
			var attack_ef = instance_create_depth(x,y,depth+1,hitbox_2)
			attack_ef.gravity = 1
			attack_ef.vspeed = lengthdir_y(32,i)
			attack_ef.keep_spin_angle = 90-i
			attack_ef.image_angle = 90-i
			attack_ef.image_xscale = 0.1
			attack_ef.image_yscale = 0.1
			attack_ef.hspeed = lengthdir_x(32,i)
			attack_ef.w_alpha = 10
			attack_ef.sprite_index = spr_snow
			}
		}

	des = 1
	}

	if x+_image_scale < global.c_x || x-_image_scale > global.c_w || y+_image_scale < global.c_y || y-_image_scale > global.c_h
	{
	instance_destroy()
	}
}

if global.ipad_effect != 0
{
timer__ ++
	if timer__%15 = 0
	{
	var attack_ef = instance_create_depth(x,y,depth+1,hitbox_2)
	attack_ef.gravity = 1
	attack_ef.keep_spin_angle = -keep_spin_angle
	attack_ef.image_angle = 45
	attack_ef.image_xscale = 0.1
	attack_ef.image_yscale = 0.1
	attack_ef.w_alpha = 10
	attack_ef.sprite_index = spr_cross
	}
}

