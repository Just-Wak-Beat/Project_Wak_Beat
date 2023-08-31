/// @description Insert description here
// You can write your code in this editor

x -= global.map_speed
y += global.map_speed_y

image_angle += t_angle


if global.low_graphics = false
{
	w_alpha += (-0.01 - w_alpha)*0.15
}
else
{
	w_alpha = 0
}

warning_timer ++

if warning_timer = target_time-1
{
	image_xscale = 0
	image_yscale = 0
}




if warning_timer = target_time
{
	w_alpha = 2
	image_alpha = 1
	scale_up_effect = 1.05
}


if warning_timer >= target_time && des = 0
{
	image_xscale += (t_scale - image_xscale)*0.35
	image_yscale += (t_scale - image_yscale)*0.35
}

if warning_timer-target_time > des_time
{
	scale_up_effect += (1 - scale_up_effect)*0.1
	des = 1
	speed += (t_speed - speed)*0.1
	if abs(speed - t_speed) < 0.1
	{
		image_xscale += (-0.01 - image_xscale)*0.3
		image_yscale += (-0.01 - image_yscale)*0.3
	}
	
	if abs(t_speed) > 0
	{
		var effect_ = instance_create_depth(x,y,depth+5,movement_effect)
		effect_.image_xscale = 0.5/(1024/sprite_width)
		effect_.image_yscale = 0.5/(1024/sprite_width)
		effect_.direction = (direction != 0) ? direction+irandom_range(140,180) : direction+180
		effect_.speed = 24
		effect_.image_blend = global.map_color
		effect_.sprite_index = spr_circle
		effect_.image_alpha = 2
	}

	if (image_xscale <= 0)
	{
		instance_destroy()
	}
}
else
{
	if (image_alpha < 1 && warning_timer%15 == 0)
	{
		w_alpha = 1
	}
}