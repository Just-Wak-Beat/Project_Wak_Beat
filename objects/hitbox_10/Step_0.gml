/// @description Insert description here
// You can write your code in this editor
x -= global.map_speed

image_angle += keep_spin_angle


if (sprite_index == spr_triangle_half)
{
	image_xscale += 0.01
	image_yscale += 0.01
}


if audio_is_playing(ipad)
{
	if (vspeed > 0 && y > global.c_h-128)
	{
		for(var i = -2; i <= 2; i++)
		{
			show_debug_message("created");
			create_cylinder(x+i*68,global.c_h-8*abs(vspeed)*(1+abs(i)),depth+15,0.5,1,64,270,0,false);
		}
		
		repeat(irandom_range(8,12))
		{
			var attack_ef = instance_create_depth(x,y+128+irandom_range(-64,64),obj_player.depth+15,hitbox_2);
			attack_ef.sprite_index = spr_circle;
			attack_ef.keep_spin_angle = irandom_range(-2,2);
			attack_ef.image_xscale = 0.04;
			attack_ef.image_yscale = 0.04;
			attack_ef.w_alpha = 10;
			attack_ef.gravity = 1;
			attack_ef.vspeed = -vspeed*0.8+irandom_range(-5,5);
			attack_ef.hspeed = irandom_range(-25,25)/2;
		}
	
		instance_destroy();
	}
}



if global.fukurou_snow_effect != 0 || global.ipad_effect != 0 || audio_is_playing(isedolhyang) || audio_is_playing(promise)
{
var _image_scale = 900*image_xscale

	if image_alpha >= 1 && des = 0 && ((y > global.c_h && gravity_direction > 180 && gravity_direction < 360) || (y < global.c_y && gravity_direction == 90))
	{
		event_user(0)
		if audio_is_playing(promise)
		{
			var _shaking_circle = create_explo_circle(x,y,1,60,0,0,3.6*image_xscale,0,0,0)
			_shaking_circle.sprite_index = spr_circle_outline
			
			global.w_alpha = 0.3
			if sprite_index == spr_star
			{
				for(var i = 0; i < 180; i += 15)
				{
					var attack_ef = instance_create_depth(x,y,depth+1,hitbox_2)
					attack_ef.speed = 10
					attack_ef.direction = i
					attack_ef.keep_spin_angle = 5
					attack_ef.image_angle = 90-i
					attack_ef.image_xscale = 0.85
					attack_ef.image_yscale = 0.85
					attack_ef.w_alpha = 10
					attack_ef.sprite_index = spr_square
				}
				instance_destroy()
			}
			else
			{
				for(var i = 0; i < 180; i += 15)
				{
					var attack_ef = instance_create_depth(x,y,depth+1,hitbox_2)
					attack_ef.speed = 10
					attack_ef.direction = i
					attack_ef.keep_spin_angle = 5
					attack_ef.image_angle = 90-i
					attack_ef.image_xscale = 0.6
					attack_ef.image_yscale = 0.6
					attack_ef.w_alpha = 10
					attack_ef.sprite_index = spr_spuare_outline
				}
			}
		}
		else
		{
			var _shaking_circle = create_explo_circle(x,y,1,60,2,0,2.4*image_xscale,0,0,0)
			_shaking_circle.sprite_index = spr_circle_outline
		}
	
	
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

	if sprite_index != spr_star && (x+_image_scale < global.c_x || x-_image_scale > global.c_w || y+_image_scale < global.c_y || y-_image_scale > global.c_h)
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



if audio_is_playing(gungsirung)
{
	w_alpha += 1/60
	timer__ ++
	if timer__ > 60
	{
		var _shaking_circle = create_explo_circle(x,y,1,60,2,0,2*image_xscale,0,0,0)
		_shaking_circle.sprite_index = spr_circle_outline
		
		for(var i = 0; i < 360; i += 60)
		{
			var attack_ef = instance_create_depth(x,y,depth+1,hitbox_6)
			attack_ef.direction = i+image_angle
			attack_ef.speed = 20
			attack_ef.keep_spin_angle = 2
			attack_ef.image_xscale = 0.3
			attack_ef.image_yscale = 0.3
			attack_ef.w_alpha = 10
			attack_ef.sprite_index = spr_triangle
		}
		
		var _ef = instance_create_depth(x,y,depth+1,explosion_effect)
		_ef.image_xscale = 2
		_ef.image_yscale = 2
		_ef.t_scale = 2
		_ef.image_blend = c_white
		instance_destroy()
	}
}
else
{
	if global.low_graphics = false
	{
		w_alpha += (-0.01 - w_alpha)*0.15
	}
	else
	{
		w_alpha = 0
	}
}





if sprite_index == spr_star
{
	var random_val = irandom_range(0,100);
	
	if random_val > 60
	{
		var effect_ = instance_create_depth(x+irandom_range(-32,32),y+irandom_range(-32,32),depth+5,movement_effect)
		effect_.image_xscale = 0.5/(1024/sprite_width)
		effect_.image_yscale = 0.5/(1024/sprite_width)
		effect_.direction = (direction != 0) ? direction+irandom_range(140,180) : direction+180
		effect_.speed = 24
		effect_.image_blend = global.map_color
		effect_.sprite_index = spr_circle
		effect_.image_alpha = 1
	}
	
	if random_val >= 90
	{
		var attack_ef = instance_create_depth(x+irandom_range(-32,32),y+irandom_range(-32,32),depth+1,hitbox_2)
		attack_ef.speed = 20
		attack_ef.direction = (direction != 0) ? direction+irandom_range(140,180) : direction+180
		attack_ef.keep_spin_angle = 5
		attack_ef.image_angle = 90
		attack_ef.image_xscale = 0.2
		attack_ef.image_yscale = 0.2
		attack_ef.w_alpha = 10
		attack_ef.sprite_index = spr_square
	}
	
	gravity += (0 - gravity)*0.1
	if (speed > 0)
	{
		speed += (6 - speed)*0.1
	}
}









