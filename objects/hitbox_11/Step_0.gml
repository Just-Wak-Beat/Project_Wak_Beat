/// @description Insert description here
// You can write your code in this editor


automatic_angle_real += (automatic_angle - automatic_angle_real)*0.05

if noneuse_t_x = 0
{
	x += (t_x - x)*0.1
	y += (t_y - y)*0.1
}

t_angle += automatic_angle_real
image_blend = global.map_color

image_angle += (t_angle - image_angle)*0.15
if global.low_graphics = false
{
	w_alpha += (-0.01 - w_alpha)*0.15
}
else
{
	w_alpha = 0
}
image_alpha += (1 - image_alpha)*0.1

if image_xscale < 0
{
	image_xscale = 0
}

if image_yscale < 0
{
	image_yscale = 0
}

if abs(t_scale-image_xscale) >= 10
{
	image_alpha += (0 - image_alpha)*0.1
}

image_xscale += (t_scale - image_xscale)*0.1
image_yscale += (t_scale - image_yscale)*0.1


if abs(image_xscale - t_scale) > 0.5
{
	shake_effect = 0
}


if abs(image_xscale - t_scale) < 0.1 && shake_effect = 0
{
	shake_effect = 1
}


if shake_effect = 1
{
	if shake_scale > 0
	{
		view_shake(0.1,shake_scale,3,shake_dir)
	}
	shake_effect = 2
}