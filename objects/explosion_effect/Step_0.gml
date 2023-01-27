/// @description Insert description here
// You can write your code in this editor
x -= global.map_speed


t_scale += 0.01
image_index += 1.1
image_alpha -= 0.09
image_xscale += (t_scale - image_xscale)*0.1
image_yscale += (t_scale - image_yscale)*0.1

if image_index >= 6.5
{
instance_destroy()
}