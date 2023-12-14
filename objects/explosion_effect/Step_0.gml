/// @description Insert description here
// You can write your code in this editor
x -= global.map_speed
y += global.map_speed_y


t_scale += t_scaling
t_scaling += (0.1 - t_scaling)*0.1

image_alpha += (-0.25 - image_alpha)*0.1
image_xscale += (t_scale - image_xscale)*0.1
image_yscale += (t_scale - image_yscale)*0.1

if (image_index < 8)
{
	image_index ++
}

if (image_alpha <= 0)
{
	instance_destroy()
}

image_blend = merge_color((get_dis_color(global.background_color,c_white) < 7) ? c_black : c_white,image_blend,0.1);