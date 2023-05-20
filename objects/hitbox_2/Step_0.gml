/// @description Insert description here
// You can write your code in this editor
if gravity = 0
{
x -= global.map_speed
y += global.map_speed_y
}

if sprite_index != spr_circle_half
{
image_angle += keep_spin_angle
}
else
{
speed = 50
}


if global.low_graphics = false
{
w_alpha += (-0.01 - w_alpha)*0.15
}
else
{
w_alpha = 0
}


if (audio_is_playing(promise) && sprite_index == spr_spuare_outline)
{
	timer ++
}

if (timer > 120)
{
	image_alpha += (-0.01 - image_alpha)*0.1
	if (image_alpha <= 0)
	{
		instance_destroy()
	}
}

